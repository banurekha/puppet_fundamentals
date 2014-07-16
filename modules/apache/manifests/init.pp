class apache(
  $user  = 'apache',
  $group = 'apache',
){
  user  {'apache':
    ensure => present,
    gid    => $group,
  }

  group  {'apache':
    ensure => present,
  }

  package { 'httpd':
    ensure => present,
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
    owner  => $user,
    group  => $group,
    mode   => 0444,
    path   => '/etc/httpd/conf/httpd.conf',
    source => 'puppet:///modules/apache/httpd.conf',
  }
}
