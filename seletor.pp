
$service_name = $facts['is_virtual'] ? {
  true => 'ntp',
  false => 'ntpd',
}

notify { $service_name: }
