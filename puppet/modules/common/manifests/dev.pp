class common::dev {
        file { '/etc/profile.d/bashrc.sh':
                ensure => file,
                owner  => 'root',
                group  => 'root',
                mode   => '0644',
                source => 'puppet:///modules/common/etc/profile.d/bashrc.sh_dev',
        }
}
