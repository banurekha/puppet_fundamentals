class apache {
  user  {'apache':
    ensure => present,
    gid    => 'apache'
  }

  group  {'apache':
    ensure => present,
  }

  package { 'httpd':
    ensure => present,
  }

  file { '/var/www':
    ensure => directory,
    owner => 'apache',
    group => 'apache',
  }

  file { '/var/www/html':
    ensure => directory,
    owner => 'apache',
    group => 'apache',
  }

  file { '/var/www/html/index.html':
    owner  => 'apache',
    group  => 'apache',
    source => 'puppet:///modules/apache/index.html',
  }
}
