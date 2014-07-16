class danhorst_userprefs::vim (
  $homedir = '/root',
) inherits userprefs::vim {
  File["${homedir}/.vimrc"] {
    source => 'puppet:///modules/danhorst_userprefs/vim/vimrc',
  }
}
