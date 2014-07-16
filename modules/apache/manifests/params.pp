class apache::params {
  case $::osfamily {
    'Debian': {
      $httpd_user    = 'www-data'
      $httpd_group   = 'www-data'
      $httpd_package = 'apache2'
      $httpd_service = 'apache2'
      $httpd_conf    = 'apache2.conf'
      $httpd_confdir = '/etc/apache2'
      $httpd_dir     = '/var/www'
      $httpd_docroot = '/var/www'
    }
    'RedHat': {
      $httpd_user    = 'apache'
      $httpd_group   = 'apache'
      $httpd_package = 'httpd'
      $httpd_service = 'httpd'
      $httpd_conf    = 'httpd.conf'
      $httpd_confdir = '/etc/httpd/conf'
      $httpd_dir     = ['/var/www','/var/www/html']
      $httpd_docroot = '/var/www/html'
    }
    default : {
      fail( "Module ${module_name} is not supported on ${::osfamily}")
    }
  }
}
