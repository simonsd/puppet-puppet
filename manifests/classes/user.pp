class puppet::user {
  group {
    'puppet':;
  }

  user {
    'puppet':
      gid => 'puppet',
      require => Group['puppet'];
  }
}
