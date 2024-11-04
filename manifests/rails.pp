# = Class: ruby::rails
#
# This class installs ruby::rails
# It can be include directly or from ruby class.
#
# == Parameters
#
# [*version*]
#   The package version, used in the ensure parameter of package type.
#   Default: present. Can be 'latest' or a specific version number.
#   Note that if the argument absent (see below) is set to true, the
#   package is removed, whatever the value of version parameter.
#
# [*absent*]
#   Set to 'true' to remove package(s) installed by module
#   Can be defined also by the (top scope) variable $ruby_absent
#
# [*noops*]
#   Set noop metaparameter to true for all the resources managed by the module.
#   Basically you can run a dryrun for this specific module if you set
#   this to true. Default: undef
#
# [*package*]
#   The name of ruby package
#
class ruby::rails (
  $version             = 'present',
  $absent              = false,
  $noops               = undef,
  $package             = $ruby::package_rails
  ) inherits ruby {

  $bool_absent=any2bool($absent)

  ### Definition of some variables used in the module
  $manage_package = $bool_absent ? {
    true  => 'absent',
    false => $version,
  }

  ### Managed resources
  if ! defined(Package[$ruby::package_rails]) {
    package { $ruby::package_rails:
      ensure   => $manage_package,
      noop     => $noops,
    }
  }
}
