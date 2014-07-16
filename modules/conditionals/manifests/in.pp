class conditionals::in {
  file {'/tmp/os':
    ensure  => file,
    content => $::operatingsystem ? {
      'CentOS' => 'You are running CentOS and saving money.',
      'RHEL'   => 'You are running RHEL and spending money.',
    },
  }
}
