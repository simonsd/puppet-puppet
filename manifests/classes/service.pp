class puppet::service {
  service {
    'puppet':
      ensure => stopped,
      enable => false,
      hasstatus => $::operatingsystem ? {
        default   => undef,
        archlinux => false,
      },
      path => $::operatingsystem ? {
        default => undef,
        archlinux => '/etc/rc.d',
      };
  }
}
