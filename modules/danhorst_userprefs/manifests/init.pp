class danhorst_userprefs (
  $homedir = '/root',
){
  file { "${homedir}/.gitconfig":
    ensure  => file,
    source  => 'puppet:///modules/danhorst_userprefs/gitconfig',
    mode    => 0444,
  }
}
