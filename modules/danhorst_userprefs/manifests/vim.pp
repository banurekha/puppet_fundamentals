class danhorst_userprefs::vim inherits userprefs::vim {
  file { "${homedir}/.vimrc":
    source => 'puppet:///modules/danhorst_userprefs/vim/vimrc',
  }
}
