begin
  require 'vagrant'
rescue LoadError
  raise 'The Vagrant Centos7 Fix plugin must be run within vagrant.'
end

if Vagrant::VERSION < '1.6.0'
  raise 'The Vagrant Centos7 Fix plugin has only been tested with vagrant 1.6.x'
end

module VagrantPlugins
  module Centos7Fix
    class Plugin < Vagrant.plugin('2')
      name "Centos7 Fix"
      description "Fixed networking on CentOS 7"

      guest('centos7', 'redhat') do
        require_relative 'guest'
        Guest
      end
    end

  end

end
