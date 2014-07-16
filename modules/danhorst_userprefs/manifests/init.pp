class danhorst_userprefs {
  file { '/root/.gitconfig' :
    ensure => file,
    source => 'puppet:///modules/danhorst_userprefs/gitconfig',
    mode   => '0444',
    user   => 'root',
  }
}
