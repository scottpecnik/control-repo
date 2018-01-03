#
#
class profile::puppetmaster::puppetdb {

  class { 'puppetdb':
    listen_address   => '0.0.0.0',
    open_listen_port => true,
  }
  include puppetdb::master::config

}
