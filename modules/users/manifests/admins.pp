class users::admins {
  group { staff:
    ensure => 'present',
  }

  user { admin:
    groups => 'staff',
    shell  => '/bin/csh',
  }
}
