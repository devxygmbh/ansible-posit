#!/bin/bash
# Invoked from /etc/pam.d/<workbench-profile> as:
#   account required pam_exec.so seteuid /usr/local/sbin/ensure-home-dir.sh
# Workbench's rworkspaces-$USER touches /home/$USER before the PAM session stack
# runs pam_oddjob_mkhomedir, so we provision the home here in the account phase.

set -euo pipefail
PATH="/usr/sbin:/usr/bin:/sbin:/bin"

SKEL_DIR="/etc/skel"
LOCK_DIR="/run/ensure-home-dir"

log() {
    logger -t ensure-home-dir -- "$*"
}

die() {
    log "refusing: $*"
    exit 1
}

user="${PAM_USER:-}"
[[ -n "$user" ]] || die "empty PAM_USER"

entry="$(getent passwd "$user" || true)"
[[ -n "$entry" ]] || die "no passwd entry for '$user'"

IFS=: read -r name _pw uid gid _gecos home _shell <<< "$entry"
[[ -n "$name" && -n "$uid" && -n "$gid" && -n "$home" ]] || die "malformed passwd entry for '$user'"
[[ "$uid" -ne 0 ]] || die "uid 0 not allowed"
[[ "${home:0:1}" == "/" ]] || die "home not absolute: '$home'"
[[ "$home" != "/" && "$home" != "/home" ]] || die "home is a root path: '$home'"
[[ "$home" != *".."* ]] || die "home contains '..': '$home'"
[[ "$home" == /home/* ]] || die "home outside /home/*: '$home'"
[[ ! -L "$home" ]] || die "home is a symlink: '$home'"

if [[ -e "$home" ]]; then
    [[ -d "$home" ]] || die "home exists and is not a directory: '$home'"
    existing_uid="$(stat -c %u "$home")"
    [[ "$existing_uid" == "$uid" ]] || die "home '$home' owned by uid $existing_uid, expected $uid"
    log "home already present for $name ($home)"
    exit 0
fi

mkdir -p -m 0755 "$LOCK_DIR"
sanitized_user="${name//[^A-Za-z0-9._-]/_}"
lock_file="$LOCK_DIR/${sanitized_user}.lock"

exec 9>"$lock_file"
flock -w 30 9 || die "could not acquire lock $lock_file"

# Re-check after acquiring the lock in case another invocation just created it.
if [[ -e "$home" ]]; then
    [[ -d "$home" ]] || die "home exists and is not a directory after lock: '$home'"
    log "home created concurrently for $name ($home)"
    exit 0
fi

install -d -m 700 -o "$uid" -g "$gid" "$home"

if [[ -d "$SKEL_DIR" ]]; then
    cp -R --no-preserve=ownership,mode,context,xattr "$SKEL_DIR"/. "$home"/
    chown -R "$uid:$gid" "$home"
    chmod 700 "$home"
fi

if command -v restorecon >/dev/null 2>&1; then
    restorecon -R "$home" || log "restorecon non-zero for $home"
fi

log "created home for $name uid=$uid gid=$gid at $home"
exit 0
