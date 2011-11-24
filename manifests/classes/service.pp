class puppet::service {
	service {
		'puppet':
			ensure => stopped,
			enable => false;
	}
}
