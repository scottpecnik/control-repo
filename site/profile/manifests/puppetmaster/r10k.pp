#
#
class profile::puppetmaster::r10k {

  $control_repo_remote = lookup('puppetmaster::r10k::control_repo_remote')

  file { '/etc/puppetlabs/r10k':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
  }

  file { '/etc/puppetlabs/r10k/r10k.yaml':
    ensure  => present,
    content => template('profile/puppetmaster/r10k.erb'),
    owner   => 'root',
    group   => 'root',
    require => File['/etc/puppetlabs/r10k'],
  }
}
