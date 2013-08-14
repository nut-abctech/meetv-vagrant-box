class meetv::env {
    $libs = [
        "build-essential",
        "vim",
        "curl",
        "sshfs",
        "aspell",
        "aspell-da",
        "aspell-en",
        "aspell-fi",
        "aspell-no",
        "aspell-sv",
        "libreadline-dev",
        "libaspell-dev",
        "libgdbm-dev",
        "libgif-dev",
        "libjpeg62-dev",
        "libmagic-dev",#
        "libpng12-dev",#
        "libpq-dev",
        "librsvg2-dev",
        "libssl-dev",
        "libtiff4-dev",#
        "libxapian-dev",
        "libxml2-dev",#
        "libxslt1-dev",#
        "zlib1g-dev",
        "xapian-tools",
        ]

    file {
        "/home/vagrant/.profile":
        owner  => vagrant,
        group  => vagrant,
        source => "/tmp/vagrant-puppet/manifests/files/profile";

        "/home/vagrant/.bashrc":
        owner  => vagrant,
        group  => vagrant,
        source => "/tmp/vagrant-puppet/manifests/files/bashrc";
        
        "add-backports":
        ensure => "present",
        name    => "/etc/apt/sources.list.d/pgdg.list",
        content => "deb http://apt.postgresql.org/pub/repos/apt/ squeeze-pgdg main",
    }

    exec {
        "import-the-repository-key":
        command => "wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -",
        path    => '/usr/sbin:/usr/bin:/sbin:/bin',
        require => File['add-backports'],
    }

    exec { "update-apt":
        command => "apt-get update",
        user   => 'root',
        path    => '/usr/sbin:/usr/bin:/sbin:/bin',
        require => Exec['import-the-repository-key'],
    }

    package { $libs:
        ensure => installed,
        require => Exec['update-apt'],
    }
}