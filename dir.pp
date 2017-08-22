file { '/tmp/subdiretorio':
  ensure => directory,
  mode   => '0755',
}

file { 'linktest':
  ensure => link,
  path   => '/tmp/linkteste',
  target => '/etc/hosts',
}
