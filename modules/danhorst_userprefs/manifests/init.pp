class danhorst_userprefs {
  file { "${$userprefs::profile::homedir}/.gitconfig" :
    ensure => file,
    source => 'puppet:///modules/danhorst_userprefs/gitconfig',
    mode   => '0444',
    owner  => 'root',
  }
}
