# Ansible Collection "Posit"

[![status-badge](https://ci.gitlab.devxy.io/api/badges/36/status.svg)](https://ci.gitlab.devxy.io/repos/36)

Collection to install Posit PBC software.

## Installation

```sh
ansible-galaxy collection install devxy.posit
```

→ [Ansible Galaxy](https://galaxy.ansible.com/ui/repo/published/devxy/posit/)

## Documentation

Refer to the `README.md` files within each individual role:

- [workbench](https://gitlab.com/devxy/ansible/posit/-/blob/main/roles/workbench/README.md)

## Testing

All roles are tested via `molecule` using various test scenarios (defined in `extensions/molecule/`).

## Developing

### Molecule (test framework)

1. Install and active `venv` via `just init-venv`
2. Run `molecule <scenario>`, e.g. `molecule r_default`
