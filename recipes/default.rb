#
# Cookbook:: thing.resource_test
# Recipe:: default
#

thing 'Do my custom thing' do
  thing_name 'my special thing'
  registry 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion'
  :create
end
