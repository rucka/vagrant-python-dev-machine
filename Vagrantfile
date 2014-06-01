Vagrant.configure("2") do |config|
    config.vm.box = "precise32"
    config.vm.box_url = "http://files.vagrantup.com/precise32.box"

    config.vm.hostname = "vagrant.example.com"

    config.vm.synced_folder "src/","/home/vagrant/src/"
    
    config.vm.provision "puppet" do |puppet|
        puppet.manifests_path = "manifests"
        puppet.manifest_file = "vagrant.pp"

        puppet.options = "--verbose --debug"
    end 
end
