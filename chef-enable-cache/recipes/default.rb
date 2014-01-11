#
## Cookbook Name:: chef-enable-cache
## Recipe:: default
##
## Copyright 2014, Christian Fernandez
##
## Licensed under the GPLv3

template "mem_cache.conf" do
  path "/etc/apache2/mods-available/mem_cache.conf"
  source "mem_cache.conf.erb"
end

template "mem_cache.conf" do
    path "/etc/apache2/mods-available/cache.conf"
    source "cache.conf.erb"
end

execute 'enable mod_cache' do
  command "/usr/sbin/a2enmod cache"
end

execute 'enable mod_memory_cache' do
  command "/usr/sbin/a2enmod mem_cache"
end


service "apache2" do
    action :restart
end
