host { $facts['fqdn']:
  ensure => 'present',
  ip     => $facts['ipaddress'],
}

notify { 'Oi, tudo bem?': }

notify { "Meu nome é ${facts['os']['family']}": }
