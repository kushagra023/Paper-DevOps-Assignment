Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.network "private_network", ip: "192.168.56.11"
  config.vm.boot_timeout = 600

  
  config.vm.synced_folder "./website", "/vagrant/website"
  
  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = 1024
    vb.cpus = 1
    #vb.name = "my_project"  
  end
  
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y curl
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    usermod -aG docker vagrant
  SHELL
end
