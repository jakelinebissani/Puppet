$alerta = 'Mensagem de Alerta'

notify {$alerta:}

if $facts['os']['family'] == 'Debian' {
  notify { 'Sou Debian':}
}
else{
  notify { 'Não Sou Debian':}
}
