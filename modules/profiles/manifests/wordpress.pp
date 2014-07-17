class profiles::wordpress(
  $db_password = 'use_hiera',
  $db_user     = 'wordpress',
  $wp_group    = 'wordpress',
  $wp_owner    = 'wordpress',
){
  user { $wp_owner:
    ensure => present,
    gid    => $wp_group,
  }

  group { $wp_group:
    ensure => present,
  }

  class { '::wordpress':
    db_password => $db_password,
    db_user     => $db_user,
    wp_group    => $wp_group,
    wp_owner    => $wp_owner,
  }
}
