class profiles::mysql(
  $root_password    = 'use_hiera',
  $override_options = '',
  $mysql_owner      = 'mysql',
  $mysql_group      = 'mysql',
){
  user { $mysql_owner:
    ensure => present,
    gid    => $mysql_group,
  }

  group { $mysql_group:
    ensure => present,
  }

  class { '::mysql::server':
    root_password    => $root_password,
    override_options => $override_options,
  }
}
