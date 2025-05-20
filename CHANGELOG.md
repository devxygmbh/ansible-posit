### Bug Fixes

- db_drivers: check_mode improvements (4345ae4)
- add `--break-system-packages` to Python package install step (#41) (713ce63)
- set no_log for license file task (dc3aad7)
- workbench: install `passlib` for user creation module (4e5b44b)
- regression from previous commits (64df1cf)
- workbench: skip fonts and python pkgs install in check_mode (7cedf00)
- skip workbench install in check_mode (65d0e50)

### Maintenance

- **deps:** update pre-commit hook davidanson/markdownlint-cli2 to v0.18.1 (e1ef585)
- **deps:** update dependency devxy.data_science_core to v1.0.2 (a522abd)
- **deps:** update docker.io/thegeeklab/git-sv docker tag to v2.0.1 (#42) (1e2fe7c)
- **deps:** update pre-commit hook davidanson/markdownlint-cli2 to v0.18.0 (9123ef9)
- **deps:** update pre-commit hook ansible-community/ansible-lint to v25.4.0 (360874d)
- **deps:** update mstruebing/editorconfig-checker docker tag to v3.3.0 (2fd8cc9)
- **deps:** update docker docker tag to v28.1.1 (832675b)
- **deps:** update pre-commit hook adrienverge/yamllint to v1.37.1 (5d5f881)
- **deps:** update docker.io/thegeeklab/wp-git-clone docker tag to v1.0.18 (81c31fb)
- **deps:** update dependency community.crypto to v2.26.1 (c04e012)
- **deps:** update commitlint/commitlint docker tag to v19.8.1 (c856237)
- prettier nit (5fbd269)
- migrate from GitLab to CodeFloe (c727a0a)
- workbench: remove `--break-system-packages` from pip install task (e7f79bb)

### CI

- optimize release workflow (674bf85)
- bump version in galaxy.yml during release workflow (9f50822)