class puppet::config {
	$puppetfile = $operatingsystem ? {
		Ubuntu => '/etc/default/puppet',
		Fedora => '/etc/puppet/puppet.conf',
		CentOS => '/etc/puppet/puppet.conf',
		Default => '/etc/puppet/puppet.conf',
	}

	file { $puppetfile:
		ensure => present,
		source => "puppet:///config/puppet",
	}
}
