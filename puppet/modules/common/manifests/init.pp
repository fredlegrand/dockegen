class common {
        file { '/root/.bashrc':
                ensure => file,
                owner  => 'root',
                group  => 'root',
                mode   => '0755',
                source => 'puppet:///modules/common/root/.bashrc',
        }
        @package { 'cron':
                ensure => present,
        }
        @exec { "supervisor_update":
                command => "supervisorctl update",
                path    => "/usr/bin/",
		refreshonly => "true",
        }
        @file { '/etc/supervisor/conf.d/cron.conf':
                ensure => file,
                owner  => 'root',
                group  => 'root',
                mode   => '0644',
                source => 'puppet:///modules/mariadb/etc/supervisor/conf.d/cron.conf',
                require => Package["cron"],
		notify => exec["supervisor_update"],
        }
        @exec { "supervisor_restart_cron":
                command => "supervisorctl restart cron",
                path    => "/usr/bin/",
		refreshonly => "true",
        }

}
