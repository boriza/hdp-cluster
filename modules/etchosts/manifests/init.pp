# Ensure that the machines in the vm can find each other without DNS
class etchosts ($ownhostname) {
  host { 'host_one':
    name  => 'one.vm',
    alias => ['one', 'one.vm'],
    ip    => '192.168.111.1'
  }

  host { 'host_two':
    name  => 'two.vm',
    alias => ['two', 'two.vm'],
    ip    => '192.168.111.2'
  }

  host { 'host_three':
    name  => 'three.vm',
    alias => ['three', 'three.vm'],
    ip    => '192.168.111.3'
  }

  host { 'host_four':
    name  => 'four.vm',
    alias => ['four', 'four.vm'],
    ip    => '192.168.111.4'
  }

  file { 'agent_hostname':
    path    => "/etc/hostname",
    ensure  => present,
    replace => true,
    content => "${ownhostname}", # own hostname
    owner   => 1546
  }

  file { 'agent_sysconfig':
    path    => "/etc/sysconfig/network",
    ensure  => present,
    replace => true,
    content => "NETWORKING=yes \nHOSTNAME=${ownhostname}" # own hostname
  }

}