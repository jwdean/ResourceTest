#
# Cookbook:: thing.resource_test
# Resource:: thing
#

resource_name :thing
provides :thing

property :thing_name, [String], required: true
property :registry, [String], required: true

action :create do
  if registry_key_exists?(new_resource.registry)
    Chef::Log.info('thing:create, the hive exists')
  else
    Chef::Log.info('thing:create, the hive DOES NOT exists')
  end

  my_thing = ResourceTest::Helpers::Thing.new(new_resource.thing_name, new_resource.registry)
  my_thing.do(new_resource.thing_name, new_resource.registry)
end

action_class do
  include ResourceTest::Helpers
end
