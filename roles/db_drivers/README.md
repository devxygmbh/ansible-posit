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
  - [db_drivers_install_dir](#db_drivers_install_dir)
  - [db_drivers_oracle_artifactory_format](#db_drivers_oracle_artifactory_format)
  - [db_drivers_oracle_artifactory_repo](#db_drivers_oracle_artifactory_repo)
  - [db_drivers_oracle_enabled](#db_drivers_oracle_enabled)
  - [db_drivers_oracle_install_dir](#db_drivers_oracle_install_dir)
  - [db_drivers_oracle_packages](#db_drivers_oracle_packages)
  - [db_drivers_oracle_version](#db_drivers_oracle_version)
  - [db_drivers_oracle_version_suffix](#db_drivers_oracle_version_suffix)
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

### db_drivers_install_dir

Base directory for DB drivers installation (version is appended)

**_Type:_** string<br />

#### Default value

```YAML
db_drivers_install_dir: /opt
```

### db_drivers_oracle_artifactory_format

Package format to download from Artifactory ("zip" or "rpm")

**_Type:_** string<br />

#### Default value

```YAML
db_drivers_oracle_artifactory_format: zip
```

### db_drivers_oracle_artifactory_repo

Artifactory repository path for Oracle Instant Client (appended to db_drivers_artifactory_base_url)

**_Type:_** string<br />

#### Default value

```YAML
db_drivers_oracle_artifactory_repo: otn_software/linux/instantclient
```

### db_drivers_oracle_enabled

Enable Oracle Instant Client installation

**_Type:_** boolean<br />

#### Default value

```YAML
db_drivers_oracle_enabled: false
```

### db_drivers_oracle_install_dir

Base directory for Oracle Instant Client installation

**_Type:_** string<br />

#### Default value

```YAML
db_drivers_oracle_install_dir: /opt/oracle
```

### db_drivers_oracle_packages

Oracle Instant Client packages to install (e.g. basic, odbc, sqlplus, sdk)

**_Type:_** list<br />

#### Default value

```YAML
db_drivers_oracle_packages:
  - basic
```

### db_drivers_oracle_version

Full Oracle Instant Client version string (used in download filenames)

**_Type:_** string<br />

#### Default value

```YAML
db_drivers_oracle_version: 19.30.0.0.0
```

### db_drivers_oracle_version_suffix

Suffix appended to zip filenames in Oracle CDN downloads (e.g. "dbru" for 19.x versions, empty for 23.x)

**_Type:_** string<br />

#### Default value

```YAML
db_drivers_oracle_version_suffix: dbru
```

### db_drivers_version

#### Default value

```YAML
db_drivers_version: 2026.01.0
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
