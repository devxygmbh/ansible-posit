[[_TOC_]]

# Ansible Role to install Posit Workbench

✨️ Highlights

- Creation of localhost SSL certificates for secure launcher communication (via `mkcert`)
- Automatic encoding of secrets
- Idempotent creation of `secure-cookie-key` and `session-rpc-key`
- Smart restarts on configuration file changes

## Outbound Connectivity

| Purpose                                 | URL                                                                     | Note                                                  |
| --------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------- |
| Download Workbench                      | <https://s3.amazonaws.com>                                              |                                                       |
| Installation of additional fonts        | <https://github.com/>                                                   |                                                       |
| Download of `mkcert`                    | <https://dl.filippo.io>                                                 | to create self-signed certs for localhost             |
| Download of Jupyter packages            | <https://pipy.org>                                                      |                                                       |
| Download R interpreter (arm64)          | <https://devxy-r-builds.fsn1.your-objectstorage.com>                    | Optional dependency: `devxy.data_science_core.r`      |
| Download R interpreter (amd64)          | <https://cdn.posit.co>                                                  | Optional dependency: `devxy.data_science_core.r`      |
| Infer latest release & Download release | <https://api.github.com/repos/quarto-dev/quarto-cli>                    | Optional dependency: `devxy.data_science_core.quarto` |
| Download miniconda                      | <https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh> | Optional dependency: `devxy.data_science_core.python` |
| Download Python                         | <https://repo.anaconda.com>                                             | Optional dependency: `devxy.data_science_core.python` |

<generator object sync_do_map at 0x109e4f040>

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
- [Dependencies](#dependencies)
- [License](#license)
- [Author](#author)

---

## Requirements

- Minimum Ansible version: `2.9`

## Default Variables

| Variable                                                      | Default | Description                                                                                                    | Type      |
| ------------------------------------------------------------- | ------- | -------------------------------------------------------------------------------------------------------------- | --------- |
| `workbench_create_localhost_certificate`                      |         | Creates a self-signed SSL certificate for localhost to enable secure communication between server and launcher | `boolean` |
| `workbench_database_connection_timeout_seconds`               |         | Database connection timeout seconds                                                                            | `integer` |
| `workbench_database_connection_uri`                           |         | Database connection URI                                                                                        | `string`  |
| `workbench_database_database`                                 |         | Database name                                                                                                  | `string`  |
| `workbench_database_directory`                                |         | Database directory                                                                                             | `string`  |
| `workbench_database_host`                                     |         | Database host                                                                                                  | `string`  |
| `workbench_database_password`                                 |         | Database password                                                                                              | `string`  |
| `workbench_database_port`                                     |         | Database port                                                                                                  | `integer` |
| `workbench_database_provider`                                 |         | Database provider                                                                                              | `string`  |
| `workbench_database_username`                                 |         | Database username                                                                                              | `string`  |
| `workbench_fonts_install_custom_fonts`                        |         | Install custom fonts                                                                                           | `boolean` |
| `workbench_fonts_jetbrains_mono_version`                      |         | JetBrains Mono version                                                                                         | `string`  |
| `workbench_general_local_test_user_create`                    |         | Whether to create a local (test) user                                                                          | `boolean` |
| `workbench_general_local_test_user_name`                      |         | Local test user name                                                                                           | `string`  |
| `workbench_general_local_test_user_password`                  |         | Local test user password                                                                                       | `string`  |
| `workbench_general_version`                                   |         | Workbench version                                                                                              | `string`  |
| `workbench_jupyter_jupyter_exe`                               |         | Jupyter executable path                                                                                        | `string`  |
| `workbench_jupyter_jupyter_resource_usage_version`            |         | Jupyter resource usage version                                                                                 | `string`  |
| `workbench_jupyter_jupyter_scheduler_version`                 |         | Jupyter scheduler version                                                                                      | `string`  |
| `workbench_jupyter_jupyterlab_extension_version`              |         | JupyterLab extension version                                                                                   | `string`  |
| `workbench_jupyter_jupyterlab_gitlab_version`                 |         | JupyterLab GitLab version                                                                                      | `string`  |
| `workbench_jupyter_jupyterlab_version`                        |         | JupyterLab version                                                                                             | `string`  |
| `workbench_jupyter_jupyternotebook_version`                   |         | Jupyter Notebook version                                                                                       | `string`  |
| `workbench_jupyter_labs_enabled`                              |         | Jupyter labs enabled                                                                                           | `integer` |
| `workbench_jupyter_lckr_jupyterlab_variableinspector_version` |         | JupyterLab variable inspector version                                                                          | `string`  |
| `workbench_jupyter_notebooks_enabled`                         |         | Jupyter notebooks enabled                                                                                      | `integer` |
| `workbench_launcher_certificate_file`                         |         | Launcher certificate file                                                                                      | `string`  |
| `workbench_launcher_certificate_key_file`                     |         | Launcher certificate key file                                                                                  | `string`  |
| `workbench_launcher_cluster_exe`                              |         | Launcher cluster executable                                                                                    | `string`  |
| `workbench_launcher_cluster_name`                             |         | Launcher cluster name                                                                                          | `string`  |
| `workbench_launcher_cluster_type`                             |         | Launcher cluster type                                                                                          | `string`  |
| `workbench_launcher_enable_ssl`                               |         | Launcher enable SSL                                                                                            | `integer` |
| `workbench_launcher_server_address`                           |         | Launcher server address                                                                                        | `string`  |
| `workbench_launcher_server_admin_group`                       |         | Launcher server admin group                                                                                    | `string`  |
| `workbench_launcher_server_enable_debug_logging`              |         | Launcher server enable debug logging                                                                           | `integer` |
| `workbench_launcher_server_port`                              |         | Launcher server port                                                                                           | `integer` |
| `workbench_launcher_server_server_user`                       |         | Launcher server user                                                                                           | `string`  |
| `workbench_logging_delete_days`                               |         | Logging delete days                                                                                            | `integer` |
| `workbench_logging_dir`                                       |         | Logging directory                                                                                              | `string`  |
| `workbench_logging_file_mode`                                 |         | Logging file mode                                                                                              | `integer` |
| `workbench_logging_log_level`                                 |         | Logging log level                                                                                              | `string`  |
| `workbench_logging_max_rotations`                             |         | Logging max rotations                                                                                          | `integer` |
| `workbench_logging_max_size_mb`                               |         | Logging max size in MB                                                                                         | `integer` |
| `workbench_logging_rotate`                                    |         | Logging rotate                                                                                                 | `integer` |
| `workbench_logging_rotate_days`                               |         | Logging rotate days                                                                                            | `integer` |
| `workbench_logging_type`                                      |         | Logging type                                                                                                   | `string`  |
| `workbench_logging_warn_syslog`                               |         | Logging warn syslog                                                                                            | `integer` |
| `workbench_metrics_enabled`                                   |         | Metrics enabled                                                                                                | `integer` |
| `workbench_metrics_port`                                      |         | Metrics port                                                                                                   | `integer` |
| `workbench_positron_enabled`                                  |         | Positron enabled                                                                                               | `integer` |
| `workbench_positron_session_no_profile`                       |         | Positron session no profile                                                                                    | `integer` |
| `workbench_positron_session_timeout_kill_hours`               |         | Positron session timeout kill hours                                                                            | `integer` |
| `workbench_server_auth_cookies_force_secure`                  |         | Auth cookies force secure                                                                                      | `integer` |
| `workbench_server_auth_openid`                                |         | Auth OpenID                                                                                                    | `integer` |
| `workbench_server_auth_openid_username_claim`                 |         | Auth OpenID username claim                                                                                     | `string`  |
| `workbench_server_auth_pam_require_password_prompt`           |         | Auth PAM require password prompt                                                                               | `integer` |
| `workbench_server_auth_pam_sessions_close`                    |         | Auth PAM sessions close                                                                                        | `integer` |
| `workbench_server_auth_pam_sessions_enabled`                  |         | Auth PAM sessions enabled                                                                                      | `integer` |
| `workbench_server_auth_pam_sessions_profile`                  |         | Auth PAM sessions profile                                                                                      | `string`  |
| `workbench_server_auth_pam_sessions_use_password`             |         | Auth PAM sessions use password                                                                                 | `integer` |
| `workbench_server_auth_saml`                                  |         | Auth SAML                                                                                                      | `integer` |
| `workbench_server_auth_timeout_minutes`                       |         | Auth timeout minutes                                                                                           | `integer` |
| `workbench_server_databricks_enabled`                         |         | Server Databricks enabled                                                                                      | `string`  |
| `workbench_server_db_connection_timeout`                      |         | DB connection timeout                                                                                          | `integer` |
| `workbench_server_launcher_address`                           |         | Launcher address                                                                                               | `string`  |
| `workbench_server_launcher_default_cluster`                   |         | Launcher default cluster                                                                                       | `string`  |
| `workbench_server_launcher_enable_cgroups`                    |         | Enables/disables cgroups for local launcher resource limits                                                    | `integer` |
| `workbench_server_launcher_port`                              |         | Launcher port                                                                                                  | `integer` |
| `workbench_server_launcher_session_callback_address`          |         | Launcher session callback address                                                                              | `string`  |
| `workbench_server_launcher_session_callback_verify_ssl_certs` |         | Launcher session callback verify SSL certificates                                                              | `integer` |
| `workbench_server_launcher_sessions_enabled`                  |         | Launcher sessions enabled                                                                                      | `integer` |
| `workbench_server_launcher_use_ssl`                           |         | Launcher use SSL                                                                                               | `integer` |
| `workbench_server_launcher_verify_ssl_certs`                  |         | Launcher verify SSL certificates                                                                               | `integer` |
| `workbench_server_monitor_audit_data_path`                    |         | Monitor audit data path                                                                                        | `string`  |
| `workbench_server_monitor_audit_r_console`                    |         | Monitor audit R console                                                                                        | `string`  |
| `workbench_server_monitor_data_path`                          |         | Monitor data path                                                                                              | `string`  |
| `workbench_server_monitor_interval_seconds`                   |         | Monitor interval seconds                                                                                       | `integer` |
| `workbench_server_monitor_rstudio_session_metrics`            |         | Monitor RStudio session metrics                                                                                | `integer` |
| `workbench_server_monitor_shared_storage_path`                |         | Whether rrd-based monitoring is enabled                                                                        | `string`  |
| `workbench_server_monitor_stderr_enabled`                     |         | Monitor stderr enabled                                                                                         | `integer` |
| `workbench_server_rsession_diagnostics_enabled`               |         | RSession diagnostics enabled                                                                                   | `integer` |
| `workbench_server_rsession_diagnostics_strace_enabled`        |         | RSession diagnostics strace enabled                                                                            | `integer` |
| `workbench_server_rsession_no_profile`                        |         | RSession no profile                                                                                            | `integer` |
| `workbench_server_server_access_log`                          |         | Server access log                                                                                              | `integer` |
| `workbench_server_server_admin_enabled`                       |         | Server admin enabled                                                                                           | `integer` |
| `workbench_server_server_data_dir`                            |         | Server data directory                                                                                          | `string`  |
| `workbench_server_server_license_type`                        |         | Server license type                                                                                            | `string`  |
| `workbench_server_server_license_warning_days`                |         | Server license warning days                                                                                    | `integer` |
| `workbench_server_server_load_balancing_enabled`              |         | Server load balancing enabled                                                                                  | `integer` |
| `workbench_server_server_product_check`                       |         | Server versions scan                                                                                           | `integer` |
| `workbench_server_server_project_sharing`                     |         | Server project sharing                                                                                         | `integer` |
| `workbench_server_server_user`                                |         | Server user                                                                                                    | `string`  |
| `workbench_server_server_versions_scan`                       |         | Server versions scan                                                                                           | `integer` |
| `workbench_server_user`                                       |         | Server user                                                                                                    | `string`  |
| `workbench_server_user_homedir_path`                          |         | Server user home directory path                                                                                | `string`  |
| `workbench_server_user_provisioning_enabled`                  |         | Server user provisioning enabled                                                                               | `integer` |
| `workbench_server_user_provisioning_register_on_first_login`  |         | Whether to create local users via JIT provisioning for SSO logins                                              | `integer` |
| `workbench_server_user_provisioning_start_uid`                |         | Server user provisioning start UID                                                                             | `integer` |
| `workbench_server_www_address`                                |         | WWW address                                                                                                    | `string`  |
| `workbench_server_www_enable_origin_check`                    |         | WWW enable origin check                                                                                        | `integer` |
| `workbench_server_www_session_ssl_enabled`                    |         | WWW session SSL enabled                                                                                        | `integer` |
| `workbench_server_www_ssl_certificate`                        |         | WWW SSL certificate                                                                                            | `string`  |
| `workbench_server_www_ssl_certificate_key`                    |         | WWW SSL certificate key                                                                                        | `string`  |
| `workbench_server_www_ssl_enabled`                            |         | WWW SSL enabled                                                                                                | `integer` |
| `workbench_server_www_thread_pool_size`                       |         | WWW thread pool size                                                                                           | `integer` |
| `workbench_session_allow_r_repos_edit`                        |         | Allow R repos edit                                                                                             | `integer` |
| `workbench_session_copilot_enabled`                           |         | Copilot enabled                                                                                                | `integer` |
| `workbench_session_cull_minutes`                              |         | Session cull minutes                                                                                           | `integer` |
| `workbench_session_repos_conf`                                |         | Repos configuration                                                                                            | `string`  |
| `workbench_session_restrict_directory_view`                   |         | Restrict directory view                                                                                        | `integer` |
| `workbench_session_session_connections_block_suspend`         |         | Session connections block suspend                                                                              | `integer` |
| `workbench_session_session_external_pointers_block_suspend`   |         | Session external pointers block suspend                                                                        | `integer` |
| `workbench_session_session_quit_child_processes_on_exit`      |         | Session quit child processes on exit                                                                           | `integer` |
| `workbench_session_session_save_action_default`               |         | Session save action default                                                                                    | `string`  |
| `workbench_session_session_timeout_kill_hours`                |         | Session timeout kill hours                                                                                     | `integer` |
| `workbench_session_session_timeout_minutes`                   |         | Session timeout minutes                                                                                        | `integer` |
| `workbench_session_session_timeout_suspend`                   |         | Session timeout suspend                                                                                        | `integer` |
| `workbench_user_env_enabled`                                  |         | Enable user environment configuration (SSH agent, PATH, GPG_TTY)                                               |           |

## Dependencies

None.

## License

AGPL-3.0-or-later

## Author

Patrick Schratz
