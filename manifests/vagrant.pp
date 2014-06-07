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
        ["python", "python-dev", "python-pip", "vim", "git"]:
        ensure => latest,
        require => Exec['update-apt']
    }

    exec { "pip-install-requirements":
        command => "sudo /usr/bin/pip install -r $PROJ_DIR/requirements.txt",
        tries => 2,
        timeout => 600,
        require => Package['python-pip', 'python-dev'],
        logoutput => on_failure,
    }

    exec { "run-tests":
        command => "python -m discover -p '*Fixture.py' -s 'src/'",
        tries => 2,
        timeout => 600,
        require => Exec['pip-install-requirements'],
        logoutput => true,
    }
}

include init


info("stopped vagrant provisioning")
