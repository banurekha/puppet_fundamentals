define apache::vhost (
  $docroot,
  $port       = '80',
  $priority   = '10',
  $options    = 'Indexes MultiViews',
  $vhost_name = $title,
  $servername = $title,
  $logdir     = $apache::params::logdir,
){
  file { "${apache::params::confdir}/${title}.conf":
  }
}
