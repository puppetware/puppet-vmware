# = Class: vmware_fusion::install
#
# Install VMware Fusion
#
# == Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# == Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class vmware_fusion::install {
  $version = $vmware_fusion::version
  $source = $vmware_fusion::source

  if $source == '' {
    fail('A source path or URL must be specified.')
  } else {
    package {"vmware-fusion-${version}":
      ensure => installed,
      source => "${source}",
      provider => appdmg,
    }
  }
}