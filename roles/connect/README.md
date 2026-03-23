# connect

Installs Posit Connect <https://posit.co/>

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [connect_applications_run_as_current_user](#connect_applications_run_as_current_user)
  - [connect_applications_supervisor_accounts](#connect_applications_supervisor_accounts)
  - [connect_applications_supervisor_path](#connect_applications_supervisor_path)
  - [connect_applications_supervisor_script](#connect_applications_supervisor_script)
  - [connect_artifactory_base_url](#connect_artifactory_base_url)
  - [connect_artifactory_enabled](#connect_artifactory_enabled)
  - [connect_artifactory_password](#connect_artifactory_password)
  - [connect_artifactory_posit_repo](#connect_artifactory_posit_repo)
  - [connect_artifactory_username](#connect_artifactory_username)
  - [connect_auth_api_key_auth](#connect_auth_api_key_auth)
  - [connect_auth_inactivity](#connect_auth_inactivity)
  - [connect_auth_ldap_bind_dn](#connect_auth_ldap_bind_dn)
  - [connect_auth_ldap_bind_password](#connect_auth_ldap_bind_password)
  - [connect_auth_ldap_group_object_class](#connect_auth_ldap_group_object_class)
  - [connect_auth_ldap_group_search_base_dn](#connect_auth_ldap_group_search_base_dn)
  - [connect_auth_ldap_server_address](#connect_auth_ldap_server_address)
  - [connect_auth_ldap_user_email_attribute](#connect_auth_ldap_user_email_attribute)
  - [connect_auth_ldap_user_first_name_attribute](#connect_auth_ldap_user_first_name_attribute)
  - [connect_auth_ldap_user_last_name_attribute](#connect_auth_ldap_user_last_name_attribute)
  - [connect_auth_ldap_user_object_class](#connect_auth_ldap_user_object_class)
  - [connect_auth_ldap_user_search_base_dn](#connect_auth_ldap_user_search_base_dn)
  - [connect_auth_ldap_user_unique_id_attribute](#connect_auth_ldap_user_unique_id_attribute)
  - [connect_auth_lifetime](#connect_auth_lifetime)
  - [connect_auth_name](#connect_auth_name)
  - [connect_auth_oauth2_client_id](#connect_auth_oauth2_client_id)
  - [connect_auth_oauth2_client_secret](#connect_auth_oauth2_client_secret)
  - [connect_auth_oauth2_email_claim](#connect_auth_oauth2_email_claim)
  - [connect_auth_oauth2_openid_issuer](#connect_auth_oauth2_openid_issuer)
  - [connect_auth_oauth2_register_on_first_login](#connect_auth_oauth2_register_on_first_login)
  - [connect_auth_oauth2_scopes](#connect_auth_oauth2_scopes)
  - [connect_auth_oauth2_unique_id_claim](#connect_auth_oauth2_unique_id_claim)
  - [connect_auth_oauth2_username_claim](#connect_auth_oauth2_username_claim)
  - [connect_auth_pam_forward_password](#connect_auth_pam_forward_password)
  - [connect_auth_pam_service](#connect_auth_pam_service)
  - [connect_auth_pam_sessions_enabled](#connect_auth_pam_sessions_enabled)
  - [connect_auth_provider](#connect_auth_provider)
  - [connect_auth_saml_email_attribute](#connect_auth_saml_email_attribute)
  - [connect_auth_saml_idp_metadata_path](#connect_auth_saml_idp_metadata_path)
  - [connect_auth_saml_idp_metadata_url](#connect_auth_saml_idp_metadata_url)
  - [connect_auth_saml_sp_entity_id](#connect_auth_saml_sp_entity_id)
  - [connect_auth_saml_unique_id_attribute](#connect_auth_saml_unique_id_attribute)
  - [connect_auth_saml_username_attribute](#connect_auth_saml_username_attribute)
  - [connect_authorization_default_user_role](#connect_authorization_default_user_role)
  - [connect_authorization_publishers_can_add_users](#connect_authorization_publishers_can_add_users)
  - [connect_authorization_publishers_can_manage_run_as](#connect_authorization_publishers_can_manage_run_as)
  - [connect_authorization_publishers_can_manage_vanities](#connect_authorization_publishers_can_manage_vanities)
  - [connect_authorization_publishers_can_own_groups](#connect_authorization_publishers_can_own_groups)
  - [connect_authorization_user_groups](#connect_authorization_user_groups)
  - [connect_authorization_user_info_editable_by](#connect_authorization_user_info_editable_by)
  - [connect_authorization_viewers_can_only_see_themselves](#connect_authorization_viewers_can_only_see_themselves)
  - [connect_authorization_viewers_can_request_privileges](#connect_authorization_viewers_can_request_privileges)
  - [connect_branding_display_name](#connect_branding_display_name)
  - [connect_branding_enabled](#connect_branding_enabled)
  - [connect_branding_favicon](#connect_branding_favicon)
  - [connect_branding_logo](#connect_branding_logo)
  - [connect_database_connection_max_lifetime](#connect_database_connection_max_lifetime)
  - [connect_database_max_idle_connections](#connect_database_max_idle_connections)
  - [connect_database_max_open_connections](#connect_database_max_open_connections)
  - [connect_database_postgres_database](#connect_database_postgres_database)
  - [connect_database_postgres_host](#connect_database_postgres_host)
  - [connect_database_postgres_password](#connect_database_postgres_password)
  - [connect_database_postgres_port](#connect_database_postgres_port)
  - [connect_database_postgres_url](#connect_database_postgres_url)
  - [connect_database_postgres_user](#connect_database_postgres_user)
  - [connect_database_provider](#connect_database_provider)
  - [connect_database_sqlite_dir](#connect_database_sqlite_dir)
  - [connect_general_version](#connect_general_version)
  - [connect_git_concurrency](#connect_git_concurrency)
  - [connect_git_credentials](#connect_git_credentials)
  - [connect_git_enabled](#connect_git_enabled)
  - [connect_git_executable](#connect_git_executable)
  - [connect_git_polling_frequency](#connect_git_polling_frequency)
  - [connect_http_force_secure](#connect_http_force_secure)
  - [connect_http_listen](#connect_http_listen)
  - [connect_http_no_warning](#connect_http_no_warning)
  - [connect_http_redirect_listen](#connect_http_redirect_listen)
  - [connect_http_redirect_target](#connect_http_redirect_target)
  - [connect_http_unix_domain_socket](#connect_http_unix_domain_socket)
  - [connect_https_certificate](#connect_https_certificate)
  - [connect_https_enabled](#connect_https_enabled)
  - [connect_https_key](#connect_https_key)
  - [connect_https_listen](#connect_https_listen)
  - [connect_https_minimum_tls](#connect_https_minimum_tls)
  - [connect_https_permanent](#connect_https_permanent)
  - [connect_https_strict_transport_security_max_age](#connect_https_strict_transport_security_max_age)
  - [connect_https_unix_domain_socket](#connect_https_unix_domain_socket)
  - [connect_licensing_expiration_email](#connect_licensing_expiration_email)
  - [connect_licensing_expiration_ui_warning](#connect_licensing_expiration_ui_warning)
  - [connect_licensing_license_type](#connect_licensing_license_type)
  - [connect_licensing_users_limit_ui_warning](#connect_licensing_users_limit_ui_warning)
  - [connect_logging_access_log](#connect_logging_access_log)
  - [connect_logging_access_log_format](#connect_logging_access_log_format)
  - [connect_logging_audit_log](#connect_logging_audit_log)
  - [connect_logging_audit_log_format](#connect_logging_audit_log_format)
  - [connect_logging_service_log](#connect_logging_service_log)
  - [connect_logging_service_log_format](#connect_logging_service_log_format)
  - [connect_logging_service_log_level](#connect_logging_service_log_level)
  - [connect_metrics_data_path](#connect_metrics_data_path)
  - [connect_metrics_enabled](#connect_metrics_enabled)
  - [connect_metrics_graphite_client_id](#connect_metrics_graphite_client_id)
  - [connect_metrics_graphite_enabled](#connect_metrics_graphite_enabled)
  - [connect_metrics_graphite_host](#connect_metrics_graphite_host)
  - [connect_metrics_graphite_port](#connect_metrics_graphite_port)
  - [connect_metrics_instrumentation](#connect_metrics_instrumentation)
  - [connect_metrics_interval](#connect_metrics_interval)
  - [connect_metrics_prometheus_listen](#connect_metrics_prometheus_listen)
  - [connect_metrics_rrd_enabled](#connect_metrics_rrd_enabled)
  - [connect_packages_http_proxy](#connect_packages_http_proxy)
  - [connect_packages_https_proxy](#connect_packages_https_proxy)
  - [connect_python_base_path](#connect_python_base_path)
  - [connect_python_bin_path](#connect_python_bin_path)
  - [connect_python_enabled](#connect_python_enabled)
  - [connect_python_executable](#connect_python_executable)
  - [connect_python_executables](#connect_python_executables)
  - [connect_quarto_base_path](#connect_quarto_base_path)
  - [connect_quarto_bin_path](#connect_quarto_bin_path)
  - [connect_quarto_enabled](#connect_quarto_enabled)
  - [connect_quarto_executable](#connect_quarto_executable)
  - [connect_quarto_executables](#connect_quarto_executables)
  - [connect_quarto_version_matching](#connect_quarto_version_matching)
  - [connect_r_base_path](#connect_r_base_path)
  - [connect_r_bin_path](#connect_r_bin_path)
  - [connect_r_enabled](#connect_r_enabled)
  - [connect_r_executable](#connect_r_executable)
  - [connect_r_executables](#connect_r_executables)
  - [connect_r_package_repositories](#connect_r_package_repositories)
  - [connect_scheduler_amd_gpu_limit](#connect_scheduler_amd_gpu_limit)
  - [connect_scheduler_connection_timeout](#connect_scheduler_connection_timeout)
  - [connect_scheduler_cpu_limit](#connect_scheduler_cpu_limit)
  - [connect_scheduler_cpu_request](#connect_scheduler_cpu_request)
  - [connect_scheduler_idle_timeout](#connect_scheduler_idle_timeout)
  - [connect_scheduler_init_timeout](#connect_scheduler_init_timeout)
  - [connect_scheduler_load_factor](#connect_scheduler_load_factor)
  - [connect_scheduler_max_conns_per_process](#connect_scheduler_max_conns_per_process)
  - [connect_scheduler_max_processes](#connect_scheduler_max_processes)
  - [connect_scheduler_max_processes_limit](#connect_scheduler_max_processes_limit)
  - [connect_scheduler_memory_limit](#connect_scheduler_memory_limit)
  - [connect_scheduler_memory_request](#connect_scheduler_memory_request)
  - [connect_scheduler_min_processes_limit](#connect_scheduler_min_processes_limit)
  - [connect_scheduler_nvidia_gpu_limit](#connect_scheduler_nvidia_gpu_limit)
  - [connect_scheduler_read_timeout](#connect_scheduler_read_timeout)
  - [connect_server_address](#connect_server_address)
  - [connect_server_compilation_concurrency](#connect_server_compilation_concurrency)
  - [connect_server_custom_headers](#connect_server_custom_headers)
  - [connect_server_dashboard_path](#connect_server_dashboard_path)
  - [connect_server_data_dir](#connect_server_data_dir)
  - [connect_server_email_provider](#connect_server_email_provider)
  - [connect_server_email_subject_prefix](#connect_server_email_subject_prefix)
  - [connect_server_frame_options_content](#connect_server_frame_options_content)
  - [connect_server_frame_options_dashboard](#connect_server_frame_options_dashboard)
  - [connect_server_gallery_enabled](#connect_server_gallery_enabled)
  - [connect_server_hide_email_addresses](#connect_server_hide_email_addresses)
  - [connect_server_hide_version](#connect_server_hide_version)
  - [connect_server_license_type](#connect_server_license_type)
  - [connect_server_logged_in_warning](#connect_server_logged_in_warning)
  - [connect_server_mail_all](#connect_server_mail_all)
  - [connect_server_product_check](#connect_server_product_check)
  - [connect_server_public_warning](#connect_server_public_warning)
  - [connect_server_root_redirect](#connect_server_root_redirect)
  - [connect_server_same_site](#connect_server_same_site)
  - [connect_server_sender_email](#connect_server_sender_email)
  - [connect_server_sender_email_display_name](#connect_server_sender_email_display_name)
  - [connect_server_system_check_frequency](#connect_server_system_check_frequency)
  - [connect_server_system_check_on_startup](#connect_server_system_check_on_startup)
  - [connect_server_temp_dir](#connect_server_temp_dir)
  - [connect_server_use_fips_encryption](#connect_server_use_fips_encryption)
  - [connect_server_whats_new_enabled](#connect_server_whats_new_enabled)
  - [connect_smtp_host](#connect_smtp_host)
  - [connect_smtp_password](#connect_smtp_password)
  - [connect_smtp_port](#connect_smtp_port)
  - [connect_smtp_ssl](#connect_smtp_ssl)
  - [connect_smtp_starttls](#connect_smtp_starttls)
  - [connect_smtp_user](#connect_smtp_user)
- [Dependencies](#dependencies)
- [License](#license)
- [Author](#author)

---

## Requirements

- Minimum Ansible version: `2.9`

## Default Variables

### connect_applications_run_as_current_user

Run applications as the publishing user

**_Type:_** boolean<br />

### connect_applications_supervisor_accounts

Comma-separated list of supervisor account names

**_Type:_** string<br />

### connect_applications_supervisor_path

Path to supervisor script

**_Type:_** string<br />

### connect_applications_supervisor_script

Supervisor script content (verbatim)

**_Type:_** string<br />

### connect_artifactory_base_url

Base URL for JFrog Artifactory

**_Type:_** string<br />

### connect_artifactory_enabled

Enable JFrog Artifactory for Posit Connect downloads

**_Type:_** boolean<br />

### connect_artifactory_password

Artifactory password/token (if auth required)

**_Type:_** string<br />

### connect_artifactory_posit_repo

Artifactory repository path for Posit software

**_Type:_** string<br />

### connect_artifactory_username

Artifactory username (if auth required)

**_Type:_** string<br />

### connect_auth_api_key_auth

Enable API key authentication

**_Type:_** boolean<br />

### connect_auth_inactivity

Session inactivity timeout

**_Type:_** string<br />

### connect_auth_ldap_bind_dn

LDAP bind DN

**_Type:_** string<br />

### connect_auth_ldap_bind_password

LDAP bind password

**_Type:_** string<br />

### connect_auth_ldap_group_object_class

LDAP group object class

**_Type:_** string<br />

### connect_auth_ldap_group_search_base_dn

LDAP group search base DN

**_Type:_** string<br />

### connect_auth_ldap_server_address

LDAP server address (ldap:// or ldaps://)

**_Type:_** string<br />

### connect_auth_ldap_user_email_attribute

LDAP attribute for email

**_Type:_** string<br />

### connect_auth_ldap_user_first_name_attribute

LDAP attribute for first name

**_Type:_** string<br />

### connect_auth_ldap_user_last_name_attribute

LDAP attribute for last name

**_Type:_** string<br />

### connect_auth_ldap_user_object_class

LDAP user object class

**_Type:_** string<br />

### connect_auth_ldap_user_search_base_dn

LDAP user search base DN

**_Type:_** string<br />

### connect_auth_ldap_user_unique_id_attribute

LDAP attribute for unique user ID

**_Type:_** string<br />

### connect_auth_lifetime

Session lifetime duration

**_Type:_** string<br />

### connect_auth_name

Display name for authentication provider

**_Type:_** string<br />

### connect_auth_oauth2_client_id

OAuth2 client ID

**_Type:_** string<br />

### connect_auth_oauth2_client_secret

OAuth2 client secret

**_Type:_** string<br />

### connect_auth_oauth2_email_claim

Claim to use for email address

**_Type:_** string<br />

### connect_auth_oauth2_openid_issuer

OpenID Connect issuer URL

**_Type:_** string<br />

### connect_auth_oauth2_register_on_first_login

Auto-register users on first login

**_Type:_** boolean<br />

### connect_auth_oauth2_scopes

OAuth2 scopes (space-separated)

**_Type:_** string<br />

### connect_auth_oauth2_unique_id_claim

Claim to use as unique user identifier

**_Type:_** string<br />

### connect_auth_oauth2_username_claim

Claim to use for username

**_Type:_** string<br />

### connect_auth_pam_forward_password

Forward user password to session

**_Type:_** boolean<br />

### connect_auth_pam_service

PAM service name

**_Type:_** string<br />

### connect_auth_pam_sessions_enabled

Enable PAM sessions

**_Type:_** boolean<br />

### connect_auth_provider

Authentication provider (password, ldap, pam, oauth2, saml, proxy)

**_Type:_** string<br />

### connect_auth_saml_email_attribute

SAML attribute for email

**_Type:_** string<br />

### connect_auth_saml_idp_metadata_path

Path to SAML IdP metadata file

**_Type:_** string<br />

### connect_auth_saml_idp_metadata_url

SAML IdP metadata URL

**_Type:_** string<br />

### connect_auth_saml_sp_entity_id

SAML Service Provider Entity ID

**_Type:_** string<br />

### connect_auth_saml_unique_id_attribute

SAML attribute for unique user ID

**_Type:_** string<br />

### connect_auth_saml_username_attribute

SAML attribute for username

**_Type:_** string<br />

### connect_authorization_default_user_role

Default role for new users (viewer, publisher, administrator)

**_Type:_** string<br />

### connect_authorization_publishers_can_add_users

Publishers can add users

**_Type:_** boolean<br />

### connect_authorization_publishers_can_manage_run_as

Publishers can manage RunAs users

**_Type:_** boolean<br />

### connect_authorization_publishers_can_manage_vanities

Publishers can manage vanity URLs

**_Type:_** boolean<br />

### connect_authorization_publishers_can_own_groups

Publishers can own groups

**_Type:_** boolean<br />

### connect_authorization_user_groups

Enable user groups

**_Type:_** boolean<br />

### connect_authorization_user_info_editable_by

Who can edit user info (self, admin, adminAndSelf)

**_Type:_** string<br />

### connect_authorization_viewers_can_only_see_themselves

Viewers can only see their own content

**_Type:_** boolean<br />

### connect_authorization_viewers_can_request_privileges

Allow viewers to request publisher privileges

**_Type:_** boolean<br />

### connect_branding_display_name

Custom display name

**_Type:_** string<br />

### connect_branding_enabled

Enable custom branding

**_Type:_** boolean<br />

### connect_branding_favicon

Path to custom favicon file

**_Type:_** string<br />

### connect_branding_logo

Path to custom logo file

**_Type:_** string<br />

### connect_database_connection_max_lifetime

Maximum connection lifetime

**_Type:_** string<br />

### connect_database_max_idle_connections

Maximum idle database connections

**_Type:_** integer<br />

### connect_database_max_open_connections

Maximum open database connections

**_Type:_** integer<br />

### connect_database_postgres_database

PostgreSQL database name

**_Type:_** string<br />

### connect_database_postgres_host

PostgreSQL host

**_Type:_** string<br />

### connect_database_postgres_password

PostgreSQL password

**_Type:_** string<br />

### connect_database_postgres_port

PostgreSQL port

**_Type:_** integer<br />

### connect_database_postgres_url

PostgreSQL connection URL

**_Type:_** string<br />

### connect_database_postgres_user

PostgreSQL username

**_Type:_** string<br />

### connect_database_provider

Database provider (SQLite or PostgreSQL)

**_Type:_** string<br />

### connect_database_sqlite_dir

Directory for SQLite database file

**_Type:_** string<br />

### connect_general_version

Posit Connect version

**_Type:_** string<br />

### connect_git_concurrency

Concurrent git operations

**_Type:_** integer<br />

### connect_git_credentials

List of Git credentials. Each entry should have: host, username, password, protocol (optional, defaults to https)

**_Type:_** list<br />

#### Example usage

```YAML
  connect_git_credentials:
    - host: github.com
      username: myuser
      password: mytoken
    - host: gitlab.example.com
      username: deploy
      password: secret
      protocol: https
```

### connect_git_enabled

Enable Git support

**_Type:_** boolean<br />

### connect_git_executable

Path to Git executable

**_Type:_** string<br />

### connect_git_polling_frequency

Repository polling interval

**_Type:_** string<br />

### connect_http_force_secure

Force secure cookies even over HTTP (use behind SSL-terminating proxy)

**_Type:_** boolean<br />

### connect_http_listen

Address and port to listen on for HTTP (e.g., :3939 or 0.0.0.0:3939)

**_Type:_** string<br />

### connect_http_no_warning

Suppress HTTP warning in logs

**_Type:_** boolean<br />

### connect_http_redirect_listen

HTTP redirect listen address (for HTTP to HTTPS redirect)

**_Type:_** string<br />

### connect_http_redirect_target

HTTP redirect target URL

**_Type:_** string<br />

### connect_http_unix_domain_socket

Unix domain socket for HTTP

**_Type:_** string<br />

### connect_https_certificate

Path to SSL certificate file

**_Type:_** string<br />

### connect_https_enabled

Enable HTTPS listener

**_Type:_** boolean<br />

### connect_https_key

Path to SSL private key file

**_Type:_** string<br />

### connect_https_listen

Address and port to listen on for HTTPS (e.g., :443 or 0.0.0.0:443)

**_Type:_** string<br />

### connect_https_minimum_tls

Minimum TLS version (1.0, 1.1, 1.2, 1.3)

**_Type:_** string<br />

### connect_https_permanent

Enforce HTTPS permanently (HSTS)

**_Type:_** boolean<br />

### connect_https_strict_transport_security_max_age

HSTS max-age value

**_Type:_** string<br />

### connect_https_unix_domain_socket

Unix domain socket for HTTPS

**_Type:_** string<br />

### connect_licensing_expiration_email

Send email on license expiration

**_Type:_** boolean<br />

### connect_licensing_expiration_ui_warning

Show dashboard expiration warning

**_Type:_** boolean<br />

### connect_licensing_license_type

License mode (local or remote)

**_Type:_** string<br />

### connect_licensing_users_limit_ui_warning

Show user limit warning

**_Type:_** boolean<br />

### connect_logging_access_log

Path to access log file

**_Type:_** string<br />

### connect_logging_access_log_format

Access log format (COMMON, COMBINED, or JSON)

**_Type:_** string<br />

### connect_logging_audit_log

Path to audit log file

**_Type:_** string<br />

### connect_logging_audit_log_format

Audit log format (JSON)

**_Type:_** string<br />

### connect_logging_service_log

Path to service log file

**_Type:_** string<br />

### connect_logging_service_log_format

Service log format (TEXT or JSON)

**_Type:_** string<br />

### connect_logging_service_log_level

Service log level (DEBUG, INFO, WARNING, ERROR)

**_Type:_** string<br />

### connect_metrics_data_path

Metrics data directory

**_Type:_** string<br />

### connect_metrics_enabled

Enable metrics collection

**_Type:_** boolean<br />

### connect_metrics_graphite_client_id

Graphite client identifier

**_Type:_** string<br />

### connect_metrics_graphite_enabled

Enable Graphite export

**_Type:_** boolean<br />

### connect_metrics_graphite_host

Graphite server hostname

**_Type:_** string<br />

### connect_metrics_graphite_port

Graphite server port

**_Type:_** integer<br />

### connect_metrics_instrumentation

Enable detailed instrumentation

**_Type:_** boolean<br />

### connect_metrics_interval

Collection interval

**_Type:_** string<br />

### connect_metrics_prometheus_listen

Prometheus listen address (e.g., :9108)

**_Type:_** string<br />

### connect_metrics_rrd_enabled

Enable RRD storage

**_Type:_** boolean<br />

### connect_packages_http_proxy

HTTP proxy URL for package downloads

**_Type:_** string<br />

### connect_packages_https_proxy

HTTPS proxy URL for package downloads

**_Type:_** string<br />

### connect_python_base_path

Base path for Python installations (fallback if python_installation_dir not set)

**_Type:_** string<br />

### connect_python_bin_path

Relative path to Python binary within version directory

**_Type:_** string<br />

### connect_python_enabled

Enable Python support

**_Type:_** boolean<br />

### connect_python_executable

Path to single Python executable

**_Type:_** string<br />

### connect_python_executables

List of Python executable paths (explicit)

**_Type:_** list<br />

### connect_quarto_base_path

Base path for Quarto installations (fallback if quarto_installation_dir not set)

**_Type:_** string<br />

### connect_quarto_bin_path

Relative path to Quarto binary within version directory

**_Type:_** string<br />

### connect_quarto_enabled

Enable Quarto support

**_Type:_** boolean<br />

### connect_quarto_executable

Path to single Quarto executable

**_Type:_** string<br />

### connect_quarto_executables

List of Quarto executable paths (explicit)

**_Type:_** list<br />

### connect_quarto_version_matching

Version matching mode (exact, major, minor, nearest)

**_Type:_** string<br />

### connect_r_base_path

Base path for R installations (fallback if r_installation_dir not set)

**_Type:_** string<br />

### connect_r_bin_path

Relative path to R binary within version directory

**_Type:_** string<br />

### connect_r_enabled

Enable R support

**_Type:_** boolean<br />

### connect_r_executable

Path to single R executable

**_Type:_** string<br />

### connect_r_executables

List of R executable paths (explicit)

**_Type:_** list<br />

### connect_r_package_repositories

List of R package repositories. Each entry must have: name, url

**_Type:_** list<br />

#### Example usage

```YAML
  connect_r_package_repositories:
    - name: CRAN
      url: https://packagemanager.posit.co/cran/latest
    - name: BioConductor
      url: https://packagemanager.posit.co/bioconductor/latest
```

### connect_scheduler_amd_gpu_limit

AMD GPU limit

**_Type:_** integer<br />

### connect_scheduler_connection_timeout

Connection timeout

**_Type:_** string<br />

### connect_scheduler_cpu_limit

CPU limit (0 for unlimited)

**_Type:_** string<br />

### connect_scheduler_cpu_request

CPU request (0 for unlimited)

**_Type:_** string<br />

### connect_scheduler_idle_timeout

Process idle timeout

**_Type:_** string<br />

### connect_scheduler_init_timeout

Process initialization timeout

**_Type:_** string<br />

### connect_scheduler_load_factor

Process load factor (0.0-1.0)

**_Type:_** string<br />

### connect_scheduler_max_conns_per_process

Maximum connections per process

**_Type:_** integer<br />

### connect_scheduler_max_processes

Maximum concurrent processes

**_Type:_** integer<br />

### connect_scheduler_max_processes_limit

Maximum process limit

**_Type:_** integer<br />

### connect_scheduler_memory_limit

Memory limit (0 for unlimited)

**_Type:_** string<br />

### connect_scheduler_memory_request

Memory request (0 for unlimited)

**_Type:_** string<br />

### connect_scheduler_min_processes_limit

Minimum process limit

**_Type:_** integer<br />

### connect_scheduler_nvidia_gpu_limit

NVIDIA GPU limit

**_Type:_** integer<br />

### connect_scheduler_read_timeout

Read timeout

**_Type:_** string<br />

### connect_server_address

Public-facing address of the Connect server (used for links in emails)

**_Type:_** string<br />

### connect_server_compilation_concurrency

Number of concurrent package compilations

**_Type:_** integer<br />

### connect_server_custom_headers

List of custom HTTP headers

**_Type:_** list<br />

### connect_server_dashboard_path

Path prefix for the Connect dashboard

**_Type:_** string<br />

### connect_server_data_dir

Data directory for Connect

**_Type:_** string<br />

### connect_server_email_provider

Email provider (none, SMTP, or Sendmail)

**_Type:_** string<br />

### connect_server_email_subject_prefix

Subject line prefix for emails

**_Type:_** string<br />

### connect_server_frame_options_content

X-Frame-Options for content (DENY, SAMEORIGIN, NONE)

**_Type:_** string<br />

### connect_server_frame_options_dashboard

X-Frame-Options for dashboard

**_Type:_** string<br />

### connect_server_gallery_enabled

Enable Connect Gallery

**_Type:_** boolean<br />

### connect_server_hide_email_addresses

Hide email addresses from non-admins

**_Type:_** boolean<br />

### connect_server_hide_version

Hide the Connect version in the UI

**_Type:_** boolean<br />

### connect_server_license_type

License type (local or remote)

**_Type:_** string<br />

### connect_server_logged_in_warning

HTML message for logged-in users

**_Type:_** string<br />

### connect_server_mail_all

Allow mailing all users

**_Type:_** boolean<br />

### connect_server_product_check

Enable product check notifications

**_Type:_** boolean<br />

### connect_server_public_warning

HTML message displayed on dashboard

**_Type:_** string<br />

### connect_server_root_redirect

Redirect path after login

**_Type:_** string<br />

### connect_server_same_site

SameSite cookie attribute (None, Lax, Strict)

**_Type:_** string<br />

### connect_server_sender_email

Email address used as the sender for system emails

**_Type:_** string<br />

### connect_server_sender_email_display_name

Display name for outbound emails

**_Type:_** string<br />

### connect_server_system_check_frequency

Periodic system check interval (0 to disable)

**_Type:_** string<br />

### connect_server_system_check_on_startup

Run system checks on startup

**_Type:_** boolean<br />

### connect_server_temp_dir

Temporary directory for content processes

**_Type:_** string<br />

### connect_server_use_fips_encryption

Use FIPS-approved encryption

**_Type:_** boolean<br />

### connect_server_whats_new_enabled

Enable What's New feed

**_Type:_** boolean<br />

### connect_smtp_host

SMTP server host

**_Type:_** string<br />

### connect_smtp_password

SMTP authentication password

**_Type:_** string<br />

### connect_smtp_port

SMTP server port

**_Type:_** integer<br />

### connect_smtp_ssl

Use SSL for SMTP connection

**_Type:_** boolean<br />

### connect_smtp_starttls

StartTLS mode (detect, always, never)

**_Type:_** string<br />

### connect_smtp_user

SMTP authentication username

**_Type:_** string<br />

## Dependencies

None.

## License

AGPL-3.0-or-later

## Author

Patrick Schratz
