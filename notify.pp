notify { 'Aprendendo a usar o Notify': }

notify { "Meu S.O é ${facts['operatingsystem']}": }

notify { "Meu hostname é ${facts['fqdn']}": }
