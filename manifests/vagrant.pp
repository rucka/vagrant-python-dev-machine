$PROJ_DIR = "/home/vagrant/src"

info("started vagrant provisioning")
info("project dir is $PROJ_DIR")
info("host is ${fqdn}")

Exec {
    path => "/usr/local/bin:/usr/bin:/usr/sbin:/bin",
}

class init {
    exec { "update-apt":
        command => "sudo apt-get update",
    }

    package {
        ["python", "python-dev", "python-pip"]:
        ensure => latest,
        require => Exec['update-apt']
    }
}

include init


info("stopped vagrant provisioning")
