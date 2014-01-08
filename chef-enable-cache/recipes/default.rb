#
## Cookbook Name:: chef-enable-cache
## Recipe:: default
##
## Copyright 2014, Christian Fernandez
##
## Licensed under the GPLv3

execute 'enable mod_cache' do
  command "a2enmod cache"
end

execute 'enable mod_memory_cache' do
  command "e2enmod mem_cache"
end


service "apache2" do
    action :restart
end
