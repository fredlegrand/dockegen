class mariadb::prod {
	realize Package [ 'cron' ]
        realize File[ '/etc/supervisor/conf.d/cron.conf' ]
	realize Exec[ 'supervisor_update' ]
	realize Exec[ 'supervisor_restart_cron' ]

        file { '/var/spool/cron/crontabs/mysql':
                ensure => file,
                owner  => 'mysql',
                group  => 'crontab',
                mode   => '0600',
                source => 'puppet:///modules/mariadb/var/spool/cron/crontabs/mysql_prod',
		notify => exec['supervisor_restart_cron'],
        }

}
