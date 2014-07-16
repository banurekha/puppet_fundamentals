class apache(
  $user         = 'apache',
  $group        = 'apache',
  $package_name = 'httpd',
){
  user  { 'apache':
    ensure => present,
    name   => $user,
    gid    => $group,
  }

  group  { 'apache':
    ensure => present,
    name   => $group,
  }

  package { 'apache':
    ensure => present,
    name   => $package_name,
  }

  file { '/var/www':
    ensure => directory,
    owner  => $user,
    group  => $group,
    mode   => '0775',
  }

  file { '/var/www/html':
    ensure => directory,
    owner  => $user,
    group  => $group,
    mode   => '0775',
  }

  file { 'welcome_page':
    ensure => file,
    owner  => $user,
    group  => $group,
    mode   => '0644',
    path   => '/var/www/html/index.html',
    source => 'puppet:///modules/apache/index.html',
  }

  file { 'apache_config':
    owner  => 'root',
    group  => 'root',
    mode   => '0444',
    path   => '/etc/httpd/conf/httpd.conf',
    source => 'puppet:///modules/apache/httpd.conf',
    notify => Service['apache'],
  }

  service { 'apache':
    ensure  => running,
    name    => $package_name,
    require => Package['apache'],
  }
}
