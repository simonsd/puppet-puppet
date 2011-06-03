class puppet::cron {
	cron { "manual-puppet, puppetmaster puppet":
		ensure => present,
		user => root,
		minute => "*/5",
		command => "/usr/sbin/puppetd --test",
	}
}
