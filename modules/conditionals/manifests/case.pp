class conditionals::out {

  case $::operatingsystem {
    'CentOS': {
      $message = 'You are running CentOS and saving money.'
    }
    'RHEL': {
      $message = 'You are running RHEL and spending money.'
    }
    default: {
      $message = 'Operating system is unknown.'
    }
  }

  file {'/tmp/os':
    ensure  => file,
    content => $message,
  }
}
