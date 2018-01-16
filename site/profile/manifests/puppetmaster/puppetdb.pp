#
#
class profile::puppetmaster::puppetdb {

  $listen_address = lookup('puppetmaster::puppetdb::listen_address')

  class { 'puppetdb':
    listen_address   => $listen_address,
    open_listen_port => true,
  }
  include puppetdb::master::config
}
