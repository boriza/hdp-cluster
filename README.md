# Hortonworks HDP cluster automatic provisioning with Vagrant
Automatic provisioning of four node Hortonworks HDP 2.x cluster using Vagrant on VirtualBox

The script is going to automatically create and start four VirtualBox CentOS VMs and have them configured to run an Ambari installation of HDP

VM configuration:
		
		one.vm - 2Gb RAM, 1 x core
		two.vm - 6Gb RAM, 1 x core
		three.vm - 6Gb RAM, 1 x core
		four.vm - 2Gb RAM, 1 x core 
You can easily customize the scipt to suit your local host's hardware requirements. Also during the HDP installation you don't have to use all VMs. e.g., you can install on vm 1 to 3


# Pre-requisites:

	Host machine with 16Gb RAM and 4 cores

	Download and install Virtual-Box 
		https://www.virtualbox.org/wiki/Downloads

	Download and install Vagrant
		https://www.vagrantup.com/

	Vagrant Host Manager
		$ vagrant plugin install vagrant-hostmanager


# Installation

1) Install pre-requisites

2) In the directory of your choice run 

		$ git clone https://github.com/boriza/hdp-cluster.git
		$ cd hdp-cluster
		$ vagrant up

3) Browse http://one.vm:8080/
```
		Login: admin
		Password: admin
```

4) Follow the installation wizard
```
		- Select Stack 2.2
		- Install options 
			target hosts:
			one.vm
			two.vm
			three.vm
			four.vm

			Select Perform manual registration, No SSH
		- Assign Masters 
     		evenly distribute services across your VMs considering hardware requirements
     	Assign Slaves and Clients
			Customize Services with your password or choose 'vagrant' 
```

# Getting started
The Ambari dashboard
	http://one.vm:8080/#/main/dashboard/metrics

SSH to VM
```
		$ ssh root@one.vm
```

Copy files to VM
```
		$ scp YOURFILE.TXT root@one.vm:/YOUR_PATH
```
HDFS
```
		$ hadoop fs -ls /user/
		$ hadoop fs -put /FROM/YOURFILE.TXT /TO
```
Spark:
```
		$ spark-shell
```

# References:
