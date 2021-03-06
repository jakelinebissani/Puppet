# Class: bind
# ===========================
#
# Full description of class bind here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'bind':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class bind {

  package { 'bind9':
    ensure => 'present',
  }

  file { 'named.conf.local':
    ensure => 'present',
    path   => '/etc/bind/named.conf.local',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/bind/named.conf.local',
    notify => Service['bind9'],
  }

  file { 'named.conf.options':
    ensure => 'present',
    path   => '/etc/bind/named.conf.options',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/bind/named.conf.options',
  }

  file { 'db.dexter.interna':
    ensure => 'present',
    path   => '/var/cache/bind/db.dexter.interna',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/bind/db.dexter.interna',
  }

  file { 'rev.dexter.interna':
    ensure => 'present',
    path   => '/var/cache/bind/rev.dexter.interna',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/bind/rev.dexter.interna',
  }

  service { 'bind9':
    ensure => 'running',
    enable => true,
  }

  Package['bind9'] -> Service['bind9']
  File['named.conf.local'] ~> Service['bind9']
  File['named.conf.options'] ~> Service['bind9']
  File['db.dexter.interna'] ~> Service['bind9']
  File['rev.dexter.interna'] ~> Service['bind9']

}
