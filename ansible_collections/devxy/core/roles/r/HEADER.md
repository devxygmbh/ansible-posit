# ansible-role-r

Installs and configures R in an opinionated way:

- All versions live at `/opt/R`
- For every R version, global `Renviron.site` (`/etc/Renviron.site`) and `Rprofile.site` (`/etc/Rprofile.site`) are configured by default
- Supports removing R versions not listed in variable `r_versions`
