# This class extends the userprefs module provided by the puppet fundamentals course
# https://github.com/puppetlabs/puppetlabs-training-bootstrap/tree/master/modules/userprefs

class danhorst_userprefs {
  file { "${$userprefs::profile::homedir}/.gitconfig" :
    ensure => file,
    source => 'puppet:///modules/danhorst_userprefs/gitconfig',
    mode   => '0444',
    owner  => 'root',
  }
}
