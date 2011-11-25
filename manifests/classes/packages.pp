class puppet::packages {
  case $::operatingsystem {
    default: {
      package {
        'puppet':;
      }
    }

    archlinux: {
      yaourt::pkg {
        'puppet':;
      }
    }
  }
}
