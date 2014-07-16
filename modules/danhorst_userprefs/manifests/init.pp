include userprefs

class danhorst_userprefs {
  file { "${homedir}/.gitconfig":
    ensure => file,
    source => 'puppet:///modules/danhorst_userprefs/gitconfig',
    group  => 'pe-puppet',
    mode   => 0444,
  }
}
