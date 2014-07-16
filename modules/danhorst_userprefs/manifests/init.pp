include userprefs

class danhorst_userprefs {
  file { "${homedir}/.gitconfig":
    source => 'puppet:///modules/danhorst_userprefs/gitconfig',
  }
}
