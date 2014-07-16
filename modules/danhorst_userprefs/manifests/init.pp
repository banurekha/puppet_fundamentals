include userprefs

class danhorst_userprefs {
  file { "${homedir}/.gitconfig":
    ensure => present,
    source => 'puppet:///modules/danhorst_userprefs/gitconfig',
    group  => 'pre-puppet',
    mode   => 0444,
  }
}
