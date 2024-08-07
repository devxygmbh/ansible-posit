# ansible

## Molecule (test framework)

- Done via `venv`
- When working with RHEL8 hosts, make sure to install `ansible@9` and `ansible-core<2.17` into the `venv` which is executing `molecule`

```sh
mkdir ~/venv
python3 -m venv ~/venv/ansible-molecule
source ~/venv/ansible-molecule/bin/activate
pip3 install molecule docker molecule-plugins[docker] 'ansible-core<2.17'
```

## Core

### [R (ansible_collections/devxy/core/roles/r)](ansible_collections/devxy/core/roles/r)

Installs and configures R in an opinionated way:

- All versions live at `/opt/R`
- For every R version, pointers to a central `Renviron.site` (`/etc/Renviron.site`) and `Rprofile.site` (`/etc/Rprofile.site`) are configured by default
- Removes R versions not listed in variable `r_r_versions`

#### Resources

- Uses prebuilt R interpreter binaries from rstudio/r-builds for `amd64`
- Uses prebuilt R interpreter binaries from devXY for `arm64`

#### Tested for

- [x] AlmaLinux 9 / RHEL 9
- [x] AlmaLinux 8 / RHEL 8

### [Quarto (ansible_collections/devxy/core/roles/quarto)](ansible_collections/devxy/core/roles/quarto)

- Installs and configures Quarto
- Multiple versions are supported
- Supports adding Quarto to `$PATH`
- Convenience aliases `release` and `pre-release` are available

**Tested with:**

- Linux arm64

## Posit

### [Workbench (ansible_collections/devxy/posit/roles/workbench)](ansible_collections/devxy/posit/roles/workbench)

- Installs and configures Posit Workbench
- Depends on `core.r`

**Notes:**

- Depends on `core.r` for R installation to be able to fully control the R installation behavior.
  R interpreters from the system package manager often use different paths for their Renviron and Rprofile files. This causes different behavior than the R interpreters in `/opt/R`.

-

## Testing

Proxy from server to localhost voa local port forwarding:

```
ssh -L 8787:localhost:8787 homelab-de
```
