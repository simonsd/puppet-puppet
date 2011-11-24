class puppet::packages {
  @package {
    'puppet':;
  }

  @yaourt::pkg {
    'puppet':;
  }

  case $::operatingsystem {
    default:   { realize(Package['puppet']) }
    archlinux: { realize(Yaourt::Pkg['puppet']) }
  }
}
