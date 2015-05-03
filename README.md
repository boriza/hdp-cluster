# Hortonworks HDP Automatic Provisioning with Vagrant
Automatic provisioning of four node Hortonworks HDP 2.x cluster using Vagrant

The script is going to automatically create and start four VirtualBox CentOS VMs and have them configured to run an Ambari installation of HDP

VM configuration:
	
		one.vm - 4Gb RAM, 1 x core
		two.vm - 2Gb RAM, 1 x core
		three.vm - 2Gb RAM, 1 x core
		four.vm - 2Gb RAM, 1 x core

# Pre-requisites:

	Host machine with 16Gb RAM

	Virtual-Box 
		https://www.virtualbox.org/wiki/Downloads

	Vagrant
		https://www.vagrantup.com/

	Vagrant Host Manager
		$ vagrant plugin install vagrant-hostmanager


# Usage

1) Install prerequisites

2) In a directory of your choice run 

		$ git clone https://github.com/boriza/hdp-cluster.git
		$ cd hdp-cluster

3) Browse http://one.vm:8080/


References:
