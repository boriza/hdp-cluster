# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "centos6.4Min"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130731.box"

  # Manage /etc/hosts on host and VMs
  config.hostmanager.enabled = false
  config.hostmanager.manage_host = true
  config.hostmanager.include_offline = true
  config.hostmanager.ignore_private_ip = false

  config.vm.define :one do |one| 
    one.vm.hostname = "one.vm"
    one.vm.provision :hostmanager
    one.vm.network :private_network, ip: "192.168.111.11"
    one.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", 2048]
    end

    one.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "manifest"
      puppet.module_path = "modules"
      puppet.manifest_file = "one.pp"
    end
  end

  config.vm.define :two do |two| 
    two.vm.hostname = "two.vm"
    two.vm.provision :hostmanager
    two.vm.network :private_network, ip: "192.168.111.12"
    two.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", 6144]
    end

    two.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "manifest"
      puppet.module_path = "modules"
      puppet.manifest_file = "two.pp"
    end
  end

  config.vm.define :three do |three| 
    three.vm.hostname = "three.vm"
    three.vm.provision :hostmanager
    three.vm.network :private_network, ip: "192.168.111.13"
    three.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", 6144]
    end

    three.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "manifest"
      puppet.module_path = "modules"
      puppet.manifest_file = "three.pp"
    end
  end

  config.vm.define :four do |four| 
    four.vm.hostname = "four.vm"
    four.vm.provision :hostmanager
    four.vm.network :private_network, ip: "192.168.111.14"
    four.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", 2048]
    end

    four.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "manifest"
      puppet.module_path = "modules"
      puppet.manifest_file = "four.pp"
    end
  end

end
