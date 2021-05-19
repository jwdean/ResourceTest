#
# Cookbook:: resource_test
# Class:: Thing
#

module ResourceTest
  module Helpers
    class Thing
      attr_reader :name, :registry

      def initialize(name, registry)
        puts "Thing: Initializing #{name} w/ registry #{registry}"

        if registry_key_exists?(registry)
          Chef::Log.info("Thing: Initializing #{name}")
        else
          Chef::Log.info("Thing: Initializing #{name},but registry does not exist")
        end
      end

      def do(name, registry)
        if registry_key_exists?(registry)
          Chef::Log.info("Thing: Doing #{name}")
        else
          Chef::Log.info("Thing: Doing #{name}, but registry does not exist")
        end
      end
    end
  end
end
