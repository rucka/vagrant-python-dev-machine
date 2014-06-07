#Vagrant python dev machine

Vagrant setup for developing python projects

## Instructions

- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](http://www.vagrantup.com/downloads.html)
- *Linux Users:* Install an NFS daemon, e.g. `apt-get install nfs-kernel-server` 
- Clone this repo
- Run `vagrant up` from the root of the cloned repo.
- This will automatically python unit test for a dummy class.
- If all it's ok run `vagrant ssh` and enjoy python coding!
