class apache {
  package { 'httpd':
    ensure => present,
  }

  file { '/var/www':
    ensure => directory,
    owner => 'root',
    group => 'root',
  }

  file { '/var/www/html':
    ensure => directory,
    owner => 'root',
    group => 'root',
  }

  file { '/var/www/html/index.html':
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/apache/index.html',
  }
}
