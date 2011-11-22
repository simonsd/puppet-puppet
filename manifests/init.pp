include *.pp

class puppet {
  class {
    'puppet::packages":;
    'puppet::user':
      require => Class['puppet::packages'];
    'puppet::config":
      require => Class['puppet::user'];
    'puppet::cron":
      require => Class['puppet::config'];
  }
}
