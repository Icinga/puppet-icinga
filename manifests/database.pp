# @summary
#   Private define resource for database backends.
#
# @api private
#
define icinga::database(
  Enum['mysql','pgsql']  $db_type,
  Array[Stdlib::Host]    $access_instances,
  String                 $db_pass,
  String                 $db_name,
  String                 $db_user,
  Array[String]          $mysql_privileges,
) {

  if $db_type == 'pgsql' {
    include ::postgresql::server

    postgresql::server::db { $db_name:
      user     => $db_user,
      password => postgresql::postgresql_password($db_user, $db_pass),
    }

    $access_instances.each |$host| {
      if $host =~ Stdlib::IP::Address::V4 {
        $_net = '/32'
      } elsif $host =~ Stdlib::IP::Address::V6 {
        $_net = '/128'
      } else {
        $_net = ''
      }

      ::postgresql::server::pg_hba_rule { "${db_user}@${host}":
        type        => 'host',
        database    => $db_name,
        user        => $db_user,
        auth_method => 'md5',
        address     => "${host}${_net}",
      }
    }
  } else {
    include ::mysql::server

    mysql::db { $db_name:
      host     => $access_instances[0],
      user     => $db_user,
      password => $db_pass,
      grant    => $mysql_privileges,
    }

    delete_at($access_instances,0).each |$host| {
      mysql_user { "${db_user}@${host}":
        password_hash => mysql::password($db_pass),
      }
      mysql_grant { "${db_user}@${host}/${db_name}.*":
        user       => "${db_user}@${host}",
        table      => "${db_name}.*",
        privileges => $mysql_privileges,
      }
    }
  }
}
