class danhorst_userprefs::profile inherits userprefs::profile {
  File["${$userprefs::profile::homedir}/.profile"] {
    source  => 'puppet:///modules/danhorst_userprefs/shell/profile',
    owner   => 'root',
    replace => true,
  }
}
