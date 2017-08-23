define vhost (
  $listen = 9999,
) {

  file { "/etc/nginx/conf.d/${title}.conf":
    ensure => file,
    content => epp('nginx/vhost.epp',{
        listen_vhost => $listen,
        name_vhost => $title,
      }),
  }

}
