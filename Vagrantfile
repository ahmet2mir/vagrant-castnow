# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure VAGRANTFILE_API_VERSION do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end
  
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  config.vm.define :castnowvm do |pm|
    pm.vm.box = "ubuntu/trusty32"
    pm.vm.hostname = "castnow"
    config.vm.network "public_network", bridge: 'wlan0'
    pm.vm.provision :shell, :path => "install.sh"
  end

end
