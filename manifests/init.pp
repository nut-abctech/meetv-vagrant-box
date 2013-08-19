# Puppet init script
# MeeTV development environment setup flow.
#
#  |
#  | [ Debian libraries install ] 
#  |    -> [ Postgresql Database install and setup] 
#  |         -> [ Perl modules setup ]
#  |            -> [ MeeTV repo clone ]
#


import "classes/*"

group { "puppet":
    ensure => "present",
}

# TODO these processes always execute. Try to verify existing before execution
# notice: /Stage[main]/Meetv::Env/Exec[import-the-repository-key]/returns: executed successfully
# notice: /Stage[main]/Meetv::Env/Exec[update-apt]/returns: executed successfully
# notice: /Stage[main]/Meetv::Database/Exec[import-schema]/returns: executed successfully
# notice: /Stage[main]/Meetv::Git::Clone/Exec[git-clone]/returns: executed successfully

class {'meetv::env': } 
    -> class{'postgresql': version => '9.0'}
    -> class {'postgresql::server':
        config_hash => {
            'ip_mask_deny_postgres_user' => '0.0.0.0/32',
            'ip_mask_allow_all_users'    => '0.0.0.0/0',
            'listen_addresses'           => '*',
            'ipv4acls'                   => ['local all tvguide trust'],
            'postgres_password'          => 'postgres',
            'manage_pg_hba_conf'         => true,
        }}
    -> class {'meetv::database':}
    -> class {'meetv::perl':}
