class puppet::config {
	$puppetfile = $operatingsystem ? {
		Default => '/etc/puppet/puppet.conf',
	}

	file { $puppetfile:
		ensure => present,
		source => "puppet:///config/puppet",
	}
}
