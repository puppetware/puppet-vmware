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
  $key = $vmware_fusion::params::key
  $companyName = $vmware_fusion::params::companyName

  if $key != '' {
    exec {'vmware-register-license':
      command => "vmware-licenseTool enter ${key} '' '${companyName}' ${version} 'VMware Fusion for Mac OS' ''",
      path => '/Applications/VMware Fusion.app/Contents/Library',
    }
  }
}