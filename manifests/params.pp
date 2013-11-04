# = Class: vmware_fusion::params
#
# Define default parameters.
#
# == Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# == Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class vmware_fusion::params {

  $version = '6.0.1'
  $build = '1331545'
  $source = ''

  $companyName = ''
  $skipEula = true
  $skipAntivirus = true
  $skipRegistration = true
  $hideLicense = true
  $skipDataCollection = true

}