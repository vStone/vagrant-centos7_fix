module VagrantPlugins
  module Centos7Fix
    class Guest < Vagrant.plugin('2', :guest)
      def detect?(machine)
        machine.communicate.test("grep 'CentOS Linux release 7' /etc/redhat-release")
      end
    end
  end

end
