
# Turn off interfering services
include interfering_services

# Install and enable ntp
include ntp

# Ensure that servers can find themselves even in absence of dns
class { 'etchosts':
  ownhostname => 'one.vm'
}


class { 'ambari_agent':
  serverhostname => "one.vm",
  ownhostname    => "three.vm"
}

# Establish ordering
Class['interfering_services'] -> Class['ntp'] -> Class['etchosts'] -> Class['ambari_agent']
