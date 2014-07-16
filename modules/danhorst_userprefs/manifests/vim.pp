class danhorst_userprefs::vim inherits userprefs::vim {
  File["${userprefs::vim::homedir}/.vimrc"] {
    source => 'puppet:///modules/danhorst_userprefs/vim/vimrc',
    user   => 'root',
  }
}
