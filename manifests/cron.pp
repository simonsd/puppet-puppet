class puppet::cron {
	cron {
		'puppet':
			ensure => present,
			user => root,
			minute => '*/5',
			command => '/usr/sbin/puppet agent --test';
	}
}
