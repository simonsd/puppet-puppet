class puppet::config {
  file {
    '/etc/puppet/puppet.conf':
      owner => root,
      group => root,
      mode => 0644,
      content => template('puppet/puppet.conf.erb');
  }
}
