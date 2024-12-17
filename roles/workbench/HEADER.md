---
gitea: none
include_toc: true
---

# Ansible Role to install Posit Workbench

✨️ Highlights

- Creation of localhost SSL certificates for secure launcher communication (via `mkcert`)
- Automatic encoding of secrets
- Idempotent creation of `secure-cookie-key`
- Smart restarts on configuration file changes

## Outbound Connectivity

| Purpose                                 | URL                                                                     | Note                                                  |
| --------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------- |
| Download Workbench                      | <https://s3.amazonaws.com>                                              |                                                       |
| Installation of additional fonts        | <https://github.com/>                                                   |                                                       |
| Download of `mkcert`                    | <https://dl.filippo.io>                                                 | to create self-signed certs for localhost             |
| Download of Jupyter packages            | <https://pipy.org>                                                      |                                                       |
| Download R interpreter (arm64)          | <https://devxy-r-builds.s3.eu-central-2.amazonaws.com>                  | Optional dependency: `devxy.data_science_core.r`      |
| Download R interpreter (amd64)          | <https://cdn.posit.co>                                                  | Optional dependency: `devxy.data_science_core.r`      |
| Infer latest release & Download release | <https://api.github.com/repos/quarto-dev/quarto-cli>                    | Optional dependency: `devxy.data_science_core.quarto` |
| Download miniconda                      | <https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh> | Optional dependency: `devxy.data_science_core.python` |
| Download Python                         | <https://repo.anaconda.com>                                             | Optional dependency: `devxy.data_science_core.python` |
