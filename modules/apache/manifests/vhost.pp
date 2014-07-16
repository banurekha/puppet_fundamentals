define apache::vhost (
  $docroot    = undef,
  $port       = '80',
  $priority   = '10',
  $options    = 'Indexes MultiViews',
  $vhost_name = $title,
  $servername = $title,
  $logdir     = $apache::params::logdir,
) {
  File {
    owner   => $apache::params::user,
    group   => $apache::params::group,
    mode    => '0644',
  }

  file { $docroot:
    ensure => directory,
  }

  file { "${apache::params::confdir}/${title}.conf":
    ensure  => file,
    content => template('apache/vhost.conf.erb'),
  }
}
