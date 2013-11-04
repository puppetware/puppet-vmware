# = Class: vmware_fusion
#
# This class installs/configures/licenses VMware Fusion. Only supported on OS X.
#
# == Parameters:
#
# $version::             Version number of VMware Fusion.
# $build::               Corresponding build number for VMware Fusion.
# $source::              URL to obtain the VMware Fusion dmg. This is **required** and will not 
#                        automagically download the dmg from VMware.
# $key::                 Your (volume) license key for VMware Fusion.
# $companyName::         Your company name. Will be used with VMware's license tool.
# $skipEula::            Skip showing the EULA modal when VMware Fusion is first run.
# $skipAntivirus::       Skip showing Antivirus modal when VMware Fusion is first run.
# $skipRegistration::    Skip showing the Registration modal when VMware Fusion is first run.
# $hideLicense::         Skip showing the License key modal when VMware Fusion is first run.
# $skipDataCollection::  Skip showing the Data Collection modal when VMware Fusion is first run.
#
# == Requires:
#
# puppetlabs/stdlib
#
# == Sample Usage:
#
#  class {'vmware_fusion':
#    version => '5.0.3',
#    build   => '1040386',
#    source  => 'http://localhost/downloads/VMware-Fusion-5.0.3-1040386-light.dmg',
#    key     => 'XXXX-XXXX-XXXX-XXXX-XXXX',
#  }
#
# == Authors:
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# == Copyright:
#
# Copyright 2013 Ryan Skoblenick.
#
class vmware_fusion (
  $build = $vmware_fusion::params::build,
  $version = $vmware_fusion::params::version,
  $source = $vmware_fusion::params::source,
  $key = $vmware_fusion::params::key,
  $companyName = $vmware_fusion::params::companyName,
  $skipEula = $vmware_fusion::params::skipEula,
  $skipAntivirus = $vmware_fusion::params::skipAntivirus,
  $skipRegistration = $vmware_fusion::params::skipRegistration,
  $hideLicense = $vmware_fusion::params::hideLicense,
  $skipDataCollection = $vmware_fusion::params::skipDataCollection
) inherits vmware_fusion::params {
  anchor {'vmware_fusion::begin': } ->
  class {'vmware_fusion::install': } ->
  class {'vmware_fusion::config': } ->
  class {'vmware_fusion::license': } ->
  anchor {'vmware_fusion::end': }
}