import 'classes/*.pp'

class puppet (
  $server = 'puppet'
){
  class {
    'concat::setup':;
    'puppet::packages':;
    'puppet::user':
      require => Class['puppet::packages'];
    'puppet::config':
      require => Class['puppet::user'];
    'puppet::service':
      require => Class['puppet::config'];
    'puppet::cron':
      require => Class['puppet::service'];
  }
}
