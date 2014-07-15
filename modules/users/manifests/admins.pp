class users::admins {
  group { staff:
    ensure => 'present',
  }

  user { admin:
    gid    => 'staff',
    shell  => '/bin/csh',
  }
}
