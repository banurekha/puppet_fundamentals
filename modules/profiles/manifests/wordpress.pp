class profiles::wordpress(
  $db_password = 'use_hiera',
){
  class { '::wordpress':
    wp_owner    => 'wordpress',
    wp_group    => 'wordpress',
    db_user     => 'wordpress',
    db_password => $db_password,
  }
}
