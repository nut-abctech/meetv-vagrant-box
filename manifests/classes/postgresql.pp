

class meetv::database (
  $dbname="tvguide", 
  $user="tvguide", 
  $password="tvguide",
  $meetv_backend = "/home/vagrant/projects/meetv/meetv-backend/"
){

  # These 2 process are working as order by 
  # 
  # postgresql_psql { "Check for existence of db '${dbname}'":
  #   command => 'SELECT 1',
  #   unless  => "SELECT datname FROM pg_database WHERE datname='${dbname}'",
  #   require => Class['postgresql::server']
  # } ~>
  postgresql::db{'vagrant':
    user     => 'vagrant',
    password => 'vagrant',
    grant    => 'all',
  } -> 
  #create tvguide database
  postgresql::db{ $dbname:
    user          => $user,
    password      => $password,
    grant         => 'all',
  }

  exec {
    "import-schema" :
    command => "${meetv_backend}/bin/meetv_db schema_deploy",
    user    => vagrant,
    group   => vagrant, 
    path    => '/usr/sbin:/usr/bin:/sbin:/bin',
    require => Postgresql::DB[$dbname],
  }  
}


