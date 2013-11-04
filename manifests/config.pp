# = Class: vmware_fusion::config
#
# Configure VMware Fusion
#
# == Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# == Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class vmware_fusion::config {
  $skipEula = $vmware_fusion::skipEula
  $skipAntivirus = $vmware_fusion::skipAntivirus
  $skipRegistration = $vmware_fusion::skipRegistration
  $hideLicense = $vmware_fusion::hideLicense
  $skipDataCollection = $vmware_fusion::skipDataCollection

  file {'/Library/Preferences/Vmware Fusion':
    ensure => directory,
    owner => 'root',
    group => 'wheel',
    mode => '0755',
  }
  ->
  file {'/Library/Preferences/Vmware Fusion/config':
    ensure => 'file',
    content => template('vmware_fusion/config.erb'),
  }
}