define apache::vhost (
  $docroot,
  $port       = '80',
  $priority   = '10',
  $options    = 'Indexes MultiViews',
  $vhost_name = $title,
  $servername = $title,
  $logdir     = $apache::params::logdir,
) {
  file { "${apache::params::confdir}/${title}.conf":
    ensure  => file,
    owner   => $apache::params::user,
    group   => $apache::params::group,
    mode    => '0644',
    content => template('apache/vhost.conf.erb'),
  }
}
