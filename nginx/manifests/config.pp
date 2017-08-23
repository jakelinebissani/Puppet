# Class nginx::config

# Class nginx::config

class nginx::config {

  file { '/etc/nginx/nginx.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content  => epp('nginx/nginx.conf.epp'),
  }

  File['/etc/nginx/nginx.conf']
  ~> Service['nginx']

}
