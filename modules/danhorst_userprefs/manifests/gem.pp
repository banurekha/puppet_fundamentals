class danhorst_userprefs::gem {
  package { 'ruby-devel':
    ensure   => 'installed',
    provider => 'yum',
  }

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
