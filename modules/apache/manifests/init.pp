class apache {
  package { 'httpd':
    ensure => present,
  }

  file { '/var/www':
    ensure => directory,
    owner => 'web',
    group => 'web',
  }

  file { '/var/www/html':
    ensure => directory,
    owner => 'web',
    group => 'web',
  }

  file { '/var/www/html/index.html':
    owner  => 'web',
    group  => 'web',
    source => 'puppet:///modules/apache/index.html',
  }
}
