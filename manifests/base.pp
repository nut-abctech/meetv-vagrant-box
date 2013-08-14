
group { "puppet":
    ensure => "present",
}


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

package { 'vim':
    ensure => installed,
    require => Exec['update-apt'],
}