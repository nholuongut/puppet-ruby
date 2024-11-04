# Class: ruby::params
#
# This class defines default parameters used by the main module class ruby
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to ruby class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class ruby::params {

  ### Application related parameters
  $provider = undef
  $package = $::operatingsystem ? {
    default => 'ruby',
  }

  $install_devel = false
  $install_rubygems = false
  $install_rails = false
  $compile_from_source = false
  $package_devel = $::operatingsystem ? {
    /(?i:Ubuntu|Debian|Mint)/ => 'ruby-dev',
    /(?i:SLES|OpenSuSE)/      => 'ruby-devel',
    default                   => 'ruby-devel',
  }
  $package_rake = $::operatingsystem ? {
    /(?i:RedHat|Centos|Scientific)/ => 'rubygem-rake',
    /(?i:SLES|OpenSuSE)/            => 'rubygem-rake',
    default                         => 'rake',
  }

  $package_rails = $::operatingsystem ? {
    default => 'rails',
  }

  $package_rubygems = $::operatingsystem ? {
    default => 'rubygems',
  }

  # General Settings
  $my_class = ''
  $version = 'present'
  $absent = false
  $noops = undef

}
