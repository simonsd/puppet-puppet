class puppet::packages {
	package {
		'puppet':;
	}

	service {
		'puppet':
			ensure => stopped,
			enable => false;
	}
}
