class apache(
  $httpd_user    = $apache::params::httpd_user,
  $httpd_group   = $apache::params::httpd_group,
  $httpd_package = $apache::params::httpd_package,
  $httpd_service = $apache::params::httpd_service,
  $httpd_conf    = $apache::params::httpd_conf,
  $httpd_confdir = $apache::params::httpd_confdir,
  $httpd_dir     = $apache::params::httpd_dir,
  $httpd_docroot = $apache::params::httpd_docroot,
) inherits apache::params {
  File {
    owner => $httpd_user,
    group => $httpd_group,
    mode  => '0644',
  }

  user  { 'apache':
    ensure => present,
    name   => $httpd_user,
    gid    => $httpd_group,
  }

  group  { 'apache':
    ensure => present,
    name   => $httpd_group,
  }

  package { 'apache':
    ensure => present,
    name   => $httpd_package,
  }

  file { $httpd_dir:
    ensure => directory,
  }

  file { 'welcome_page':
    ensure  => file,
    path    => "${httpd_docroot}/index.html",
    content => template('apache/welcome.html.erb'),
  }

  file { 'apache_config':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    path    => "${httpd_confdir}/${httpd_conf}",
    source  => "puppet:///modules/apache/${httpd_conf}",
    require => Package['apache'],
    notify  => Service['apache'],
  }

  service { 'apache':
    ensure  => running,
    name    => $httpd_service,
    require => Package['apache'],
  }
}
