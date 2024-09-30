# Ansible Role Posit Workbench

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
| r_package_syslibs_debian | ['libbz2-dev', 'libcurl4-openssl-dev', 'libgdal-dev', 'libgeos-dev', 'libgmp-dev', 'libicu-dev', 'liblzma-dev', 'libmagick++-dev', 'libmpfr-dev', 'libpcre2-dev', 'libpoppler-cpp-dev', 'libproj-dev', 'libssl-dev', 'libudunits2-dev', 'libxml2-dev', 'libz-dev'] |
| r_package_syslibs_redhat | ['cairo', 'fontconfig-devel', 'freetds-devel', 'freetype-devel', 'fribidi', 'gdal', 'gdal-devel', 'gdal-libs', 'geos-devel', 'git', 'glpk', 'glpk-devel', 'harfbuzz', 'ImageMagick-c++', 'ImageMagick-c++-devel', 'ImageMagick-libs', 'java-17-openjdk', 'java-17-openjdk-devel', 'jq', 'jq-devel', 'libaio', 'libcurl-devel', 'libgit2-devel', 'libicu-devel', 'libiodbc', 'libjpeg-turbo-devel', 'libpng-devel', 'libpq-devel', 'libsecret', 'libsodium-devel', 'libssh-devel', 'libtiff-devel', 'libuuid-devel', 'libxml2-devel', 'libxslt-devel', 'mesa-libGLU', 'mpfr', 'netcdf-devel', 'openblas', 'openssl-devel', 'proj-devel', 'qpdf-libs', 'readline', 'sqlite-devel', 'tzdata', 'udunits2-devel', 'unixODBC-devel', 'zlib-devel'] |
| workbench_create_local_test_user | False |
| workbench_database_connection_timeout_seconds | 10 |
| workbench_database_connection_uri |  |
| workbench_database_database | workbenchdb |
| workbench_database_directory | /var/lib/rstudio-server |
| workbench_database_host | localhost |
| workbench_database_password | workbench_db_password |
| workbench_database_port | 5432 |
| workbench_database_provider | sqlite |
| workbench_database_username | workbench_db_user |
| workbench_install_custom_fonts | True |
| workbench_jetbrains_mono_version | 2.304 |
| workbench_jupyter_exe | /usr/local/bin/jupyter |
| workbench_jupyterlabs_version | ~=4.0 |
| workbench_jupyternotebook_version | ~=6.0 |
| workbench_labs_enabled | 1 |
| workbench_launcher_certificate_file | /var/lib/rstudio-launcher/localhost.crt |
| workbench_launcher_certificate_key_file | /var/lib/rstudio-launcher/localhost.key |
| workbench_launcher_cluster_exe | /usr/lib/rstudio-server/bin/rstudio-local-launcher |
| workbench_launcher_cluster_name | Local |
| workbench_launcher_cluster_type | Local |
| workbench_launcher_enable_ssl | 1 |
| workbench_launcher_server_address | localhost |
| workbench_launcher_server_admin_group | rstudio-server |
| workbench_launcher_server_enable_debug_logging | 0 |
| workbench_launcher_server_port | 5559 |
| workbench_launcher_server_server_user | rstudio-server |
| workbench_local_test_user_name | posit |
| workbench_local_test_user_password | posit |
| workbench_logging_delete_days | 30 |
| workbench_logging_dir | /var/log/rstudio/rstudio-server |
| workbench_logging_file_mode | 666 |
| workbench_logging_log_level | warn |
| workbench_logging_max_rotations | 100 |
| workbench_logging_max_size_mb | 5 |
| workbench_logging_rotate | 1 |
| workbench_logging_rotate_days | 1 |
| workbench_logging_type | file |
| workbench_logging_warn_syslog | 1 |
| workbench_metrics_enabled | 0 |
| workbench_metrics_port | 8989 |
| workbench_notebooks_enabled | 1 |
| workbench_posit_jupyterlab_extension_version | ~=1.0 |
| workbench_server_auth_cookies_force_secure | 0 |
| workbench_server_auth_openid | 0 |
| workbench_server_auth_openid_username_claim | preferred_username |
| workbench_server_auth_pam_require_password_prompt | 1 |
| workbench_server_auth_pam_sessions_close | 0 |
| workbench_server_auth_pam_sessions_enabled | 1 |
| workbench_server_auth_pam_sessions_profile | su |
| workbench_server_auth_pam_sessions_use_password | 0 |
| workbench_server_auth_saml | 0 |
| workbench_server_auth_timeout_minutes | 5040 |
| workbench_server_databricks_enabled | auto |
| workbench_server_db_connection_timeout | 15 |
| workbench_server_launcher_address | localhost |
| workbench_server_launcher_default_cluster | Local |
| workbench_server_launcher_port | 5559 |
| workbench_server_launcher_session_callback_address | http://localhost:8787 |
| workbench_server_launcher_session_callback_verify_ssl_certs | 1 |
| workbench_server_launcher_sessions_enabled | 1 |
| workbench_server_launcher_use_ssl | 1 |
| workbench_server_launcher_verify_ssl_certs | 1 |
| workbench_server_monitor_audit_data_path | /var/lib/rstudio-server/audit |
| workbench_server_monitor_audit_r_console | none |
| workbench_server_monitor_data_path | /var/lib/rstudio-server/monitor |
| workbench_server_monitor_interval_seconds | 60 |
| workbench_server_monitor_rstudio_session_metrics | 1 |
| workbench_server_monitor_shared_storage_path | /var/lib/rstudio-server/shared-storage |
| workbench_server_monitor_stderr_enabled | 0 |
| workbench_server_rsession_diagnostics_enabled | 0 |
| workbench_server_rsession_diagnostics_strace_enabled | 0 |
| workbench_server_rsession_no_profile | 0 |
| workbench_server_server_access_log | 0 |
| workbench_server_server_admin_enabled | 1 |
| workbench_server_server_data_dir | /var/run/rstudio-server |
| workbench_server_server_license_type | local |
| workbench_server_server_license_warning_days | 15 |
| workbench_server_server_load_balancing_enabled | 0 |
| workbench_server_server_project_sharing | 1 |
| workbench_server_server_user | rstudio-server |
| workbench_server_server_versions_scan | 0 |
| workbench_server_user | rstudio-server |
| workbench_server_user_homedir_path | /home |
| workbench_server_user_provisioning_enabled | 0 |
| workbench_server_user_provisioning_start_uid | 15000 |
| workbench_server_www_address | 0.0.0.0 |
| workbench_server_www_enable_origin_check | 0 |
| workbench_server_www_session_ssl_enabled | 1 |
| workbench_server_www_ssl_certificate | None |
| workbench_server_www_ssl_certificate_key | None |
| workbench_server_www_ssl_enabled | 0 |
| workbench_server_www_thread_pool_size | 2 |
| workbench_session_allow_r_cran_repos_edit | 0 |
| workbench_session_copilot_enabled | 1 |
| workbench_session_cull_minutes | 0 |
| workbench_session_restrict_directory_view | 1 |
| workbench_session_session_connections_block_suspend | 0 |
| workbench_session_session_external_pointers_block_suspend | 0 |
| workbench_session_session_quit_child_processes_on_exit | 1 |
| workbench_session_session_save_action_default | no |
| workbench_session_session_timeout_kill_hours | 24 |
| workbench_session_session_timeout_minutes | 300 |
| workbench_session_session_timeout_suspend | 1 |
| workbench_version | 2024.04.3-776.pro2 |
| workbench_vscode_args | --host=0.0.0.0 |
| workbench_vscode_enabled | 1 |
| workbench_vscode_exe | /usr/lib/rstudio-server/bin/code-server/bin/code-server |



## Dependencies

- devxy.core.r

## License

license (GPL-2.0-or-later, MIT, etc)

## Author

your name
