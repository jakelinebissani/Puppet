group { 'admin':
  ensure  => 'present',
}

user { 'Adicionando o usuario Suporte':
  ensure => 'present',
  name   => 'suporte',
  gid    => 'admin',
}

