#
## Cookbook Name:: chef-pagespeed
## Recipe:: default
##
## Copyright 2014, Christian Fernandez
##
## Licensed under the GPLv3

class ::Chef::Recipe
  include ::Apt
end


apt_repository "dotdeb" do
  uri "http://dl.google.com/linux/mod-pagespeed/deb/"
  distribution "precise"
  components ["all"]
  #key "http://www.dotdeb.org/dotdeb.gpg"
end
