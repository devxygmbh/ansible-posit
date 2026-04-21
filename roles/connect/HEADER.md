[[_TOC_]]

# Ansible Role to install Posit Connect

Highlights

- Smart restarts on configuration file changes
- Support for multiple authentication providers (PAM, OAuth2/OIDC, SAML, LDAP)
- Artifactory support for air-gapped environments
- Automatic secure-cookie-key generation
- Modular gcfg configuration templating

## Outbound Connectivity

| Purpose                                 | URL                                                                     | Note                                                  |
| --------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------- |
| Download Posit Connect                  | <https://cdn.posit.co>                                                  | Unless using Artifactory                              |
| Download R interpreter (arm64)          | <https://devxy-r-builds.fsn1.your-objectstorage.com>                    | Optional dependency: `devxy.data_science_core.r`      |
| Download R interpreter (amd64)          | <https://cdn.posit.co>                                                  | Optional dependency: `devxy.data_science_core.r`      |
| Infer latest release & Download release | <https://api.github.com/repos/quarto-dev/quarto-cli>                    | Optional dependency: `devxy.data_science_core.quarto` |
| Download miniconda                      | <https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh> | Optional dependency: `devxy.data_science_core.python` |
| Download Python                         | <https://repo.anaconda.com>                                             | Optional dependency: `devxy.data_science_core.python` |

## Example Configuration

### Basic Installation with Password Authentication

```yaml
- hosts: connect_servers
  roles:
    - role: devxy.posit.connect
      vars:
        connect_general_version: '2025.12.1'
        connect_auth_provider: password
```

### OAuth2/OIDC Authentication (e.g., Azure AD, Okta)

```yaml
- hosts: connect_servers
  roles:
    - role: devxy.posit.connect
      vars:
        connect_general_version: '2025.12.1'
        connect_auth_provider: oauth2
        connect_auth_oauth2_client_id: 'your-client-id'
        connect_auth_oauth2_client_secret: '{{ vault_oauth2_secret }}'
        connect_auth_oauth2_openid_issuer: 'https://login.microsoftonline.com/your-tenant-id/v2.0'
        connect_auth_oauth2_register_on_first_login: true
```

### SAML Authentication

```yaml
- hosts: connect_servers
  roles:
    - role: devxy.posit.connect
      vars:
        connect_general_version: '2025.12.1'
        connect_auth_provider: saml
        connect_auth_saml_idp_metadata_url: 'https://idp.example.com/metadata'
        connect_auth_saml_sp_entity_id: 'https://connect.example.com'
```

### LDAP Authentication

```yaml
- hosts: connect_servers
  roles:
    - role: devxy.posit.connect
      vars:
        connect_general_version: '2025.12.1'
        connect_auth_provider: ldap
        connect_auth_ldap_server_address: 'ldaps://ldap.example.com:636'
        connect_auth_ldap_bind_dn: 'cn=service-account,ou=services,dc=example,dc=com'
        connect_auth_ldap_bind_password: '{{ vault_ldap_password }}'
        connect_auth_ldap_user_search_base_dn: 'ou=users,dc=example,dc=com'
```

### Full Stack with R, Python, and PostgreSQL

```yaml
- hosts: connect_servers
  roles:
    - role: devxy.data_science_core.r
      vars:
        r_version: '4.4.2'
    - role: devxy.data_science_core.python
      vars:
        python_version: '3.12'
    - role: devxy.posit.connect
      vars:
        connect_general_version: '2025.12.1'
        connect_r_executables:
          - /opt/R/4.4.2/bin/R
        connect_python_executables:
          - /opt/python/3.12/bin/python3
        connect_database_provider: postgres
        connect_database_host: 'postgres.example.com'
        connect_database_name: 'rsconnect'
        connect_database_username: 'rsconnect'
        connect_database_password: '{{ vault_db_password }}'
```

### Artifactory Download (Air-Gapped Environments)

```yaml
- hosts: connect_servers
  roles:
    - role: devxy.posit.connect
      vars:
        connect_general_version: '2025.12.1'
        connect_artifactory_enabled: true
        connect_artifactory_base_url: 'https://artifactory.example.com/artifactory'
        connect_artifactory_repository: 'posit-local'
        connect_artifactory_connect_path: 'connect'
        connect_artifactory_username: '{{ vault_artifactory_user }}'
        connect_artifactory_password: '{{ vault_artifactory_password }}'
```

### Behind a Reverse Proxy (SSL Termination)

```yaml
- hosts: connect_servers
  roles:
    - role: devxy.posit.connect
      vars:
        connect_general_version: '2025.12.1'
        connect_server_address: 'https://connect.example.com'
        connect_http_listen: ':3939'
        connect_http_force_secure: true
        connect_http_no_warning: true
```
