class { '::icinga::repos':
  manage_epel => true,
}

class { '::icinga::server':
  ca                   => true,
  config_server        => true,
  colocation_endpoints => { 'debian10.localdomain' => { 'host' => '192.168.5.23', } },
  global_zones         => [ 'global-templates', 'linux-commands', 'windows-commands' ],
}

class { '::icinga::ido':
  db_type         => 'mysql',
  db_host         => 'localhost',
  db_pass         => 'icinga2',
  manage_database => true,
}
