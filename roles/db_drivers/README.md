# db_drivers

Installs Posit Professional Drivers <https://posit.co/>

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [db_drivers_artifactory_base_url](#db_drivers_artifactory_base_url)
  - [db_drivers_artifactory_enabled](#db_drivers_artifactory_enabled)
  - [db_drivers_artifactory_password](#db_drivers_artifactory_password)
  - [db_drivers_artifactory_repo](#db_drivers_artifactory_repo)
  - [db_drivers_artifactory_username](#db_drivers_artifactory_username)
  - [db_drivers_version](#db_drivers_version)
  - [extra_odbcinst_entries](#extra_odbcinst_entries)
  - [odbc_ini](#odbc_ini)
- [Dependencies](#dependencies)
- [License](#license)
- [Author](#author)

---

## Requirements

- Minimum Ansible version: `2.9`

## Default Variables

### db_drivers_artifactory_base_url

Base URL for JFrog Artifactory

**_Type:_** string<br />

#### Default value

```YAML
db_drivers_artifactory_base_url: ''
```

### db_drivers_artifactory_enabled

Enable JFrog Artifactory for DB drivers download

**_Type:_** boolean<br />

#### Default value

```YAML
db_drivers_artifactory_enabled: false
```

### db_drivers_artifactory_password

Artifactory password/token (if auth required)

**_Type:_** string<br />

#### Default value

```YAML
db_drivers_artifactory_password: ''
```

### db_drivers_artifactory_repo

Artifactory repository path for DB drivers

**_Type:_** string<br />

#### Default value

```YAML
db_drivers_artifactory_repo: posit-drivers
```

### db_drivers_artifactory_username

Artifactory username (if auth required)

**_Type:_** string<br />

#### Default value

```YAML
db_drivers_artifactory_username: ''
```

### db_drivers_version

#### Default value

```YAML
db_drivers_version: 2025.03.0
```

### extra_odbcinst_entries

#### Default value

```YAML
extra_odbcinst_entries: ''
```

### odbc_ini

#### Default value

```YAML
odbc_ini: ''
```

## Dependencies

None.

## License

AGPL-3.0-or-later

## Author

Patrick Schratz
