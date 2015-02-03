class drupal::prod {
	file { '/usr/share/drupal7/themes/bartik/css/style.css':
                ensure => file,
                owner  => 'www-data',
                group  => 'www-data',
                mode   => '0644',
                source => 'puppet:///modules/drupal/usr/share/drupal7/themes/bartik/css/style.css_prod',
	}
}
