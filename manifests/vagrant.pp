$PROJ_DIR = "/home/vagrant/src"

info("started vagrant provisioning")
info("project dir is $PROJ_DIR")

class init {
    exec { "update-apt":
        command => "sudo apt-get update",
    }

    package {
        ["python", "python-dev", "python-pip"]:
        ensure => latest,
        require => Exec['updage-apt']
    }
}

include init


info("stopped vagrant provisioning")
