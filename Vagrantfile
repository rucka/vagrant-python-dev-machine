Vagrant.configure("2") do |config|
    config.vm.box = "precise32"
    config.vm.synced_folder "src/","/src/"
    
    config.vm.provision "puppet" do |puppet|
        puppet.manifests_path = "manifests"
        puppet.manifest_file = "vagrant.pp"

        puppet.options = "--verbose --debug"
    end 
end