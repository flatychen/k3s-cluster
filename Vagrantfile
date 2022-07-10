require 'yaml'
# Load settings from servers.yml file.
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "k3s"
  config.vm.box_version = "20210202.0.0"
  config.vm.network :private_network , ip: "192.168.100.10"
  config.ssh.username = "vagrant"
  config.vm.synced_folder "./", "/vagrant", create: true, owner: "root", group: "root", mount_options: ["dmode=755","fmode=644"]
  config.vm.provider "virtualbox" do |v|
		v.customize ["modifyvm", :id, "--memory", 6144]
		v.customize ["modifyvm", :id, "--cpus",4]
  end
  config.vm.provision "shell", path: "configure_env.sh", privileged: true
  config.vm.provision "shell", path: "configure_k3s.sh", privileged: true
end