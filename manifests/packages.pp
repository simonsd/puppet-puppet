class puppet::packages {
	package { "puppet":
		ensure => installed,
	}

	service { "puppet":
		ensure => stopped,
		enable => false,
	}
}
