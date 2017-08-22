file { '/etc/recurse':
  ensure  => directory,
  recurse => true,
  owner   => 'suporte',
  group   => 'suporte',
  mode    => '0644',
  source  => '/home/joao/',
}
