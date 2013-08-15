class meetv::perl {
  package {
      ["perl-doc"]:
      ensure => installed,
  }

  # Newest local::lib requires a newer version of Module::Build, so
  # downloading an older version and upgrades later.
  exec {
    "local_lib":
    command => "curl -L http://search.cpan.org/CPAN/authors/id/G/GE/GETTY/local-lib-1.006009.tar.gz | tar zx
    cd local-lib-1.006009
    perl Makefile.PL --bootstrap
    make
    make install
    echo 'eval $(perl -I\$HOME/perl5/lib/perl5 -Mlocal::lib)' >>~/.bashrc
    ",
    user    => vagrant,
    group   => vagrant,
    path    => "/bin:/usr/bin",
    cwd     => "/tmp",
    environment => "HOME=/home/vagrant",
    unless  => "test -d /home/vagrant/perl5"
  }

  # install cpanm
  exec {
    "cpanm":
      command => "bash -c 'eval $(perl -I/home/vagrant/perl5/lib/perl5 -Mlocal::lib); curl -L http://cpanmin.us | perl - App::cpanminus -n'",
      require => [ Exec["local_lib"] ],
      user    => vagrant,
      group   => vagrant,
      environment => "HOME=/home/vagrant",
      path        => '/usr/sbin:/usr/bin:/sbin:/bin',
      creates => "/home/vagrant/perl5/bin/cpanm",
  }
  
  define cpanm {
    exec {
      "bash -c 'eval $(perl -I/home/vagrant/perl5/lib/perl5 -Mlocal::lib); cpanm -n $title'":
        unless  => "bash -c 'eval $(perl -I/home/vagrant/perl5/lib/perl5 -Mlocal::lib); perldoc -u perllocal | grep -q \"$title\"'",
        user    => vagrant,
        path    => "/bin:/usr/bin",
        environment => "HOME=/home/vagrant",
        require => Exec["cpanm"],
    }
  }
  
  cpanm { ["Term::ReadLine::Gnu"]: }
}
