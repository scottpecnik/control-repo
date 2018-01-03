#
#
class role::puppetmaster {

  include ::profile::puppetmaster::puppetdb
  include ::profile::puppetmaster::r10k
  include ::profile::puppetmaster::hiera
}
