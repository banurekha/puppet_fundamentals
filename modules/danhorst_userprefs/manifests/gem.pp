class danhorst_userprefs::gem {
  file { 'gemrc':
    path    => '/etc/gemrc',
    owner   => 'root',
    group   => 'pe-puppet',
    mode    => '0644',
    content => 'gem: --no-document',
  }

  package { 'bundler':
    ensure   => 'installed',
    provider => 'gem',
  }
}
