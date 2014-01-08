#
## Cookbook Name:: apt
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
  components ['stable', 'main']
  key "http://www.dotdeb.org/dotdeb.gpg"
  action: add
end
