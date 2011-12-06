class puppet::config {
  concat {
    '/etc/puppet/puppet.conf':
      owner => root,
      group => root,
      mode => 0644;
  }

  concat::fragment {
    '/etc/puppet/puppet.conf-main':
      target => '/etc/puppet/puppet.conf',
      order => '10',
      content => template('puppet/puppet.conf-main.erb');

    '/etc/puppet/puppet.conf-agent':
      target => '/etc/puppet/puppet.conf',
      order => '20',
      content => template('puppet/puppet.conf-agent.erb');
  }
}
