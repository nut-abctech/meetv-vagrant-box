 class meetv::git::clone ($username,$email,$password,$meetv_dir = "/home/vagrant/projects/meetv") {

    package { 'git':
        ensure => installed
    }

    exec { 
        "git-clone":
        require => Package['git'],
        command => "git config --global user.name ${username}
        git config --global user.email ${email}",
        path => "/usr/bin:/bin:/usr/sbin:/sbin",
        ;
    }
    
    file {
         "${meetv_dir}/meetv-common/etc/meetv_local.yml":
         owner   => vagrant,
         group   => vagrant,
         source => "/tmp/vagrant-puppet/manifests/files/meetv_local.yml",
    }

    vcsrepo {
        "${meetv_dir}/meetv-local-lib":
        ensure   => latest,
        owner  => vagrant,
        group  => vagrant,
        provider => git,
        source => "https://${username}:${password}@github.com/startsiden/meetv-local-lib.git",
        require => Package['git'],
        ;
        "${meetv_dir}/meetv-common":
        ensure   => latest,
        owner => vagrant,
        group  => vagrant,
        provider => git,
        source => "https://${username}:${password}@github.com/startsiden/meetv-common.git",
        require => Package['git'],
        before  => File["${meetv_dir}/meetv-common/etc/meetv_local.yml"],
        ;
        "${meetv_dir}/meetv-ws":
        ensure   => latest,
        owner => vagrant,
        group  => vagrant,
        provider => git,
        source => "https://${username}:${password}@github.com/startsiden/meetv-ws.git",
        require => Package['git'],
        ;
        "${meetv_dir}/meetv-backend":
        ensure   => latest,
        owner => vagrant,
        group  => vagrant,
        provider => git,
        source => "https://${username}:${password}@github.com/startsiden/meetv-backend.git",
        require => Package['git'],
        ;
        "${meetv_dir}/meetv-web5":
        ensure   => latest,
        owner => vagrant,
        group  => vagrant,
        provider => git,
        source => "https://${username}:${password}@github.com/startsiden/meetv-web5.git",
        require => Package['git'],
        ;
    } 

}