exec { 'date':
  path   => '/usr/bin',
  unless => 'rpm -qa | grep htop'
}
