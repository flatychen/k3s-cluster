Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "k3s"
  config.vm.synced_folder "./", "/vagrant", create: true, owner: "root", group: "root", mount_options: ["dmode=755","fmode=644"]
  config.vm.provider "virtualbox" do |v|
		v.customize ["modifyvm", :id, "--memory", 6000]
		v.customize ["modifyvm", :id, "--cpus",2]
	end
end