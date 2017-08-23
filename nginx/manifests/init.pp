# Class: nginx

class nginx (
  $listen = 8080,
  $server_name = 'nginx.algar',
) {

  include nginx::install
  include nginx::config
  include nginx::service

  Class['nginx::install']
  -> Class['nginx::config']
  -> Class['nginx::service']

}
