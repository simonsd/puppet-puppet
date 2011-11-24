class puppet::cron {
	cron {
		'puppet':
			ensure => present,
			user => root,
			minute => '*/5',
			command => '/usr/bin/puppet agent --test';
	}
}
