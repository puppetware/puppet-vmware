# = Class: vmware_fusion::license
#
# License VMware Fusion
#
# == Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# == Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class vmware_fusion::license {
  $version = $vmware_fusion::version
  $key = $vmware_fusion::key
  $companyName = $vmware_fusion::companyName

  if $key != '' {
    exec {'vmware-register-license':
      command => "vmware-licenseTool enter ${key} '' '${companyName}' ${version} 'VMware Fusion for Mac OS' ''",
      unless  => 'test -f /Library/Preferences/Vmware\ Fusion/license-fusion-*',
      path    => ['/Applications/VMware Fusion.app/Contents/Library', '/bin', '/usr/bin', '/sbin', '/usr/sbin', '/usr/local/bin', '/usr/local/sbin'],
    }
  }
}