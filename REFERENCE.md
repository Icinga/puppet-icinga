# Reference

<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

### Classes

#### Public Classes

* [`icinga::agent`](#icingaagent): Setup a Icinga agent.
* [`icinga::ido`](#icingaido): Configure IDO Backend.
* [`icinga::ido::database`](#icingaidodatabase): Configure IDO backend database.
* [`icinga::redis`](#icingaredis): icinga::redis
* [`icinga::repos`](#icingarepos): This class manages the stages stable, testing and snapshot of packages.icinga.com repository and depending on the operating system platform s
* [`icinga::server`](#icingaserver): Setup a Icinga server.
* [`icinga::web`](#icingaweb): Setup Icinga Web 2 including a database backend for user settings.
* [`icinga::web::database`](#icingawebdatabase): Setup Icinga Web 2 database for user settings.
* [`icinga::worker`](#icingaworker): Setup a Icinga worker (aka satellite).

#### Private Classes

* `icinga`: Configures the Icinga 2 Core and the api feature.
* `icinga::ca`: Configures the Icinga 2 CA and the api feature.
* `icinga::redis::globals`: This class loads the default parameters by doing a hiera lookup.  This parameters depend on the os plattform. Changes maybe will break the fu
* `icinga::repos::apt`: Manage repositories via `apt`.
* `icinga::repos::yum`: Manage repositories via `yum`.
* `icinga::repos::zypper`: Manage repositories via `zypper`.

### Defined types

#### Public Defined types


#### Private Defined types

* `icinga::database`: Private define resource for database backends.

## Classes

### `icinga::agent`

Setup a Icinga agent.

#### Parameters

The following parameters are available in the `icinga::agent` class.

##### `ca_server`

Data type: `Stdlib::Host`

The CA to send the certificate request to.

##### `parent_zone`

Data type: `String`

Name of the parent Icinga zone.

Default value: `'main'`

##### `parent_endpoints`

Data type: `Hash[String, Hash]`

Configures these endpoints of the parent zone.

##### `global_zones`

Data type: `Array[String]`

List of global zones to configure.

Default value: `[]`

##### `logging_type`

Data type: `Enum['file', 'syslog']`

Switch the log target. Only `file` is supported on Windows.

Default value: `'file'`

##### `logging_level`

Data type: `Optional[Icinga2::LogSeverity]`

Set the log level.

Default value: ``undef``

##### `zone`

Data type: `String`

Set a dedicated zone name.

Default value: `'NodeName'`

### `icinga::ido`

Configure IDO Backend.

#### Parameters

The following parameters are available in the `icinga::ido` class.

##### `db_pass`

Data type: `String`

Password to connect the database.

##### `db_type`

Data type: `Enum['mysql','pgsql']`

What kind of database type to use.

Default value: `'mysql'`

##### `db_host`

Data type: `Stdlib::Host`

Database host to connect.

Default value: `'localhost'`

##### `db_port`

Data type: `Optional[Stdlib::Port]`

Port to connect. Only affects for connection to remote database hosts.

Default value: ``undef``

##### `db_name`

Data type: `String`

Name of the database.

Default value: `'icinga2'`

##### `db_user`

Data type: `String`

Database user name.

Default value: `'icinga2'`

##### `manage_database`

Data type: `Boolean`

Create database.

Default value: ``false``

##### `enable_ha`

Data type: `Boolean`

Enable HA feature for database.

Default value: ``false``

### `icinga::ido::database`

Configure IDO backend database.

#### Parameters

The following parameters are available in the `icinga::ido::database` class.

##### `db_type`

Data type: `Enum['mysql','pgsql']`

What kind of database type to use.

##### `ido_instances`

Data type: `Array[Stdlib::Host]`

List of Hosts to allow write access to the database. Usually an Icinga Server with IDO feature.

##### `db_pass`

Data type: `String`

Password to connect the database.

##### `db_name`

Data type: `String`

Name of the database.

Default value: `'icinga2'`

##### `db_user`

Data type: `String`

Database user name.

Default value: `'icinga2'`

### `icinga::redis`

Installs and configures the Icinga Redis server package.

#### Examples

##### 

```puppet
require icinga::redis
```

### `icinga::repos`

This class manages the stages stable, testing and snapshot of packages.icinga.com repository
and depending on the operating system platform some other repositories.

#### Examples

##### 

```puppet
require icinga::repos
```

#### Parameters

The following parameters are available in the `icinga::repos` class.

##### `manage_stable`

Data type: `Boolean`

Manage the Icinga stable repository. Disabled by setting to 'false'. Defaults to 'true'.

##### `manage_testing`

Data type: `Boolean`

Manage the Icinga testing repository to get access to release candidates.
Enabled by setting to 'true'. Defaults to 'false'.

##### `manage_nightly`

Data type: `Boolean`

Manage the Icinga snapshot repository to get access to nightly snapshots.
Enabled by setting to 'true'. Defaults to 'false'.

##### `configure_backports`

Data type: `Boolean`

Enables or Disables the backports repository. Has only an effect on plattforms
simular to Debian. To configure the backports repo uses apt::backports in hiera.

##### `manage_epel`

Data type: `Boolean`

Manage the EPEL (Extra Packages Enterprise Linux) repository that is needed for some package
like newer Boost libraries. Has only an effect on plattforms simular to RedHat Enterprise.

##### `manage_plugins`

Data type: `Boolean`

Manage the NETWAYS plugins repository that provides some packages for additional plugins.

##### `manage_extras`

Data type: `Boolean`

Manage the NETWAYS extras repository that provides some packages for extras.

### `icinga::server`

Setup a Icinga server.

#### Parameters

The following parameters are available in the `icinga::server` class.

##### `ca`

Data type: `Boolean`

Enables a CA on this node.

Default value: ``false``

##### `config_server`

Data type: `Boolean`

Enables that this node is the central configuration server.

Default value: ``false``

##### `zone`

Data type: `String`

Name of the Icinga zone.

Default value: `'main'`

##### `colocation_endpoints`

Data type: `Hash[String,Hash]`

When the zone includes more than one endpoint, set here the additional endpoint(s).
Icinga supports two endpoints per zone only.

Default value: `{}`

##### `workers`

Data type: `Hash[String,Hash]`

All worker zones with key 'endpoints' for
endpoint objects.

Default value: `{}`

##### `global_zones`

Data type: `Array[String]`

List of global zones to configure.

Default value: `[]`

##### `ca_server`

Data type: `Optional[Stdlib::Host]`

The CA to send the certificate request to.

Default value: ``undef``

##### `ticket_salt`

Data type: `Optional[String]`

Set an alternate ticket salt to icinga::ticket_salt from Hiera.

Default value: ``undef``

##### `web_api_user`

Data type: `String`

Icinga API user to connect Icinga 2.

Default value: `'icingaweb2'`

##### `web_api_pass`

Data type: `Optional[String]`

Icinga API user password.

Default value: ``undef``

##### `logging_type`

Data type: `Enum['file', 'syslog']`

Switch the log target. Only `file` is supported on Windows.

Default value: `'file'`

##### `logging_level`

Data type: `Optional[Icinga2::LogSeverity]`

Set the log level.

Default value: ``undef``

### `icinga::web`

Setup Icinga Web 2 including a database backend for user settings.

#### Parameters

The following parameters are available in the `icinga::web` class.

##### `db_pass`

Data type: `String`

Password to connect the database.

##### `api_pass`

Data type: `String`

Password to connect the Icinga 2 API.

##### `backend_db_pass`

Data type: `String`

Pasword to connect the IDO backend.

##### `db_type`

Data type: `Enum['mysql', 'pgsql']`

What kind of database type to use.

Default value: `'mysql'`

##### `db_host`

Data type: `Stdlib::Host`

Database host to connect.

Default value: `'localhost'`

##### `db_port`

Data type: `Optional[Stdlib::Port::Unprivileged]`

Port to connect. Only affects for connection to remote database hosts.

Default value: ``undef``

##### `db_name`

Data type: `String`

Name of the database.

Default value: `'icingaweb2'`

##### `db_user`

Data type: `String`

Database user name.

Default value: `'icingaweb2'`

##### `manage_database`

Data type: `Boolean`

Create database.

Default value: ``false``

##### `api_host`

Data type: `Variant[Stdlib::Host, Array[Stdlib::Host]]`

Single or list of Icinga 2 API endpoints to connect.

Default value: `'localhost'`

##### `api_user`

Data type: `String`

Icinga 2 API user.

Default value: `'icingaweb2'`

##### `backend_db_type`

Data type: `Enum['mysql', 'pgsql']`

What kind of database type to use as IDO backend.

Default value: `'mysql'`

##### `backend_db_host`

Data type: `Stdlib::Host`

Database host to connect for the IDO backenend.

Default value: `'localhost'`

##### `backend_db_port`

Data type: `Optional[Stdlib::Port::Unprivileged]`

Port to connect the IDO backend. Only affects for connection to remote database hosts.

Default value: ``undef``

##### `backend_db_name`

Data type: `String`

Name of the IDO database backend.

Default value: `'icinga2'`

##### `backend_db_user`

Data type: `String`

IDO database backend user name.

Default value: `'icinga2'`

### `icinga::web::database`

Setup Icinga Web 2 database for user settings.

#### Parameters

The following parameters are available in the `icinga::web::database` class.

##### `db_type`

Data type: `Enum['mysql','pgsql']`

What kind of database type to use.

##### `web_instances`

Data type: `Array[Stdlib::Host]`

List of Hosts to allow write access to the database. Usually an Icinga Web 2 instance.

##### `db_pass`

Data type: `String`

Password to connect the database.

##### `db_name`

Data type: `String`

Name of the database.

Default value: `'icingaweb2'`

##### `db_user`

Data type: `String`

Database user name.

Default value: `'icingaweb2'`

### `icinga::worker`

Setup a Icinga worker (aka satellite).

#### Parameters

The following parameters are available in the `icinga::worker` class.

##### `ca_server`

Data type: `Stdlib::Host`

The CA to send the certificate request to.

##### `zone`

Data type: `String`

Name of the Icinga zone.

##### `parent_zone`

Data type: `String`

Name of the parent Icinga zone.

Default value: `'main'`

##### `parent_endpoints`

Data type: `Hash[String, Hash]`

Configures these endpoints of the parent zone.

##### `colocation_endpoints`

Data type: `Hash[String, Hash]`

When the zone includes more than one endpoint, set here the additional endpoint(s).
Icinga supports two endpoints per zone only.

Default value: `{}`

##### `global_zones`

Data type: `Array[String]`

List of global zones to configure.

Default value: `[]`

##### `logging_type`

Data type: `Enum['file', 'syslog']`

Switch the log target. Only `file` is supported on Windows.

Default value: `'file'`

##### `logging_level`

Data type: `Optional[Icinga2::LogSeverity]`

Set the log level.

Default value: ``undef``

## Defined types

