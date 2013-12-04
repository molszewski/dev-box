VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # base box name
  config.vm.box = "ubuntu64_12"

  # omnibus plugin
  config.omnibus.chef_version = "11.8.0"

  config.vm.provider :virtualbox do |vb|
    # target box name
    vb.name = "Ubuntu 12.04 DevBox"
    # headless mode off - it's dev box
    vb.gui = true

    # target box configuration
    # 2 CPUs, 1024MB RAM, 256 MB VRAM, 3D accelaration, bi-directional clipboard and drag'n'drop for start
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--vram", "256"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]

  # Attach IDE controller
      # vb.customize ["storagectl", :id, "--name", "IDE", "--add", "ide", "--controller", "PIIX4"]
  # Attach empty DVD drive to IDE controller
      # vb.customize ["storageattach", :id, "--storagectl", "IDE", "--device", "0", "--port", "0", "--type", "dvddrive", "--medium", "emptydrive"]
  end

  # shell provisioning
  #config.vm.provision "shell",
  #    inline: "apt-get -y install ubuntu-desktop; shutdown -r now"

  # chef provisioning
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks", "my-cookbooks"]
    chef.roles_path = "roles"
    chef.add_role "dev"
  end
end
