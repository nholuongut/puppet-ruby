# = Class: ruby::compile
#
# This class installs ruby compiling it from upstream source
#
class ruby::compile {

  $packages_list = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => 'build-essential unzip vim git-core curl bison openssl libreadline6 libreadline6-dev zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev libcurl4-openssl-dev libopenssl-ruby apache2-prefork-dev libapr1-dev libaprutil1-dev libx11-dev libffi-dev tcl-dev tk-dev',
    default                   => '',
  }

  puppi::install_packages { 'ruby_compile_prerequisites':
    packages => $packages_list ,
    timeout  => 3600,
  }

  $short_versions=split($ruby::version, '[.]')
  $short_version="${short_versions[0]}.${short_versions[1]}"
  puppi::netinstall { 'ruby_source':
    url                 => "http://ftp.ruby-lang.org/pub/ruby/${short_version}/ruby-${ruby::version}.zip",
    destination_dir     => '/var/tmp',
    extracted_dir       => "ruby-${ruby::version}",
    postextract_command => 'sh configure && make && make test && make install',
    require             => Puppi::Install_packages['ruby_compile_prerequisites'],
  }

}
