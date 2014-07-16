class apache(
  $owner        = 'apache',
  $group        = 'apache',
  $package_name = 'httpd',
){
  File {
    owner => $owner,
    group => $group,
    mode  => '0644',
  }

  user  { 'apache':
    ensure => present,
    name   => $owner,
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
  }

  file { '/var/www/html':
    ensure => directory,
  }

  file { 'welcome_page':
    ensure => file,
    path   => '/var/www/html/index.html',
    source => 'puppet:///modules/apache/welcome.html',
  }

  file { 'apache_config':
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    path    => '/etc/httpd/conf/httpd.conf',
    source  => 'puppet:///modules/apache/httpd.conf',
    require => Package['apache'],
    notify  => Service['apache'],
  }

  service { 'apache':
    ensure  => running,
    name    => $package_name,
    require => Package['apache'],
  }
}
