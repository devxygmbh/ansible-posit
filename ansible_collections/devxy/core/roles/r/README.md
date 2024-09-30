# ansible-role-r

Installs and configures R in an opinionated way:

- All versions live at `/opt/R`
- For every R version, global `Renviron.site` (`/etc/Renviron.site`) and `Rprofile.site` (`/etc/Rprofile.site`) are configured by default
- Supports removing R versions not listed in variable `r_versions`

your role description

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
- [Dependencies](#dependencies)
- [License](#license)
- [Author](#author)

---

## Requirements

- Minimum Ansible version: `2.1`

## Default Variables

| Variable | Default |
| -------- | ------- |
| r_r_versions | ['4.0.5', '4.1.3', '4.2.3', '4.3.3'] |
| r_remove_old_r_versions | True |



## Dependencies

None.

## License

license (GPL-2.0-or-later, MIT, etc)

## Author

your name
