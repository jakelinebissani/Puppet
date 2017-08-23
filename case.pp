case $facts['operatingsystem'] {
  'RedHat', 'CentOS': {
    $cor = 'amarelo'
    notify { $cor: } }
'Debian', 'Ubuntu': {
$cor = 'azul'
notify { $cor: }
}
  default: {
    notify { 'Nenhum deles!': }
  }
}
