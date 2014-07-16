include userprefs

class danhorst_userprefs inherits userprefs {
  file { "${homedir}/.vimrc":
    source => 'puppet:///modules/danhorst_userprefs/vim/vimrc',
  }
}
