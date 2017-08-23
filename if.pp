if $facts['os']['family'] == 'RedHat' {
  $cartao='Débito'
}
else{
  $cartao='Crédito'
}

notify {$cartao:}
