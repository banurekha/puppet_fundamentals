class conditionals::out {
  $message = $::operatingsystem ? {
    'CentOS' => 'You are running CentOS and saving money.',
    'RHEL'   => 'You are running RHEL and spending money.',
    default  => 'Operating system is unknown',
  }

  file {'/tmp/os':
    ensure  => file,
    content => $message,
  }
}
