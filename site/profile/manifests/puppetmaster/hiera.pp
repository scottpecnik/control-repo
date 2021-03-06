#
#

class profile::puppetmaster::hiera {

  class { 'hiera':
    hiera_version   =>  '5',
    hiera5_defaults =>  {'datadir' => 'data', 'data_hash' => 'yaml_data'},
    hierarchy       =>  [
                          {'name' =>  'Virtual yaml', 'path'  =>  "virtual/%{::virtual}.yaml"},
                          {'name' =>  'Nodes yaml', 'paths' =>  ['nodes/%{::trusted.certname}.yaml', 'nodes/%{::osfamily}.yaml']},
                          {'name' =>  'Default yaml file', 'path' =>  'common.yaml'},
                        ],
  }
}
