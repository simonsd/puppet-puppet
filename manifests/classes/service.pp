class puppet::service {
	service {
		'puppet':
			ensure => stopped,
			enable => false,
			path => $::operatingsystem ? {
				default => undef,
				archlinux => '/etc/rc.d',
			};
	}
}
