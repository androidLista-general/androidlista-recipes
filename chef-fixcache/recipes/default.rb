#
## Cookbook Name:: chef-fixcache
## Recipe:: default
##
## Copyright 2014, Christian Fernandez
##
## Licensed under the GPLv3


directory "/srv/www/androidlista_prod/current/cache" do
        mode 00775
end
