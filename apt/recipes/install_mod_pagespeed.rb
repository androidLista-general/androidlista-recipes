#
# Cookbook Name:: apache2
# Recipe:: install_mod_pagespeed 
#
# Copyright 2008, OpsCode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

class ::Chef::Recipe
    include ::Apt
end

package 'apache2' do
  package_name 'mod-pagespeed-stable'
  action :install
  options "--force-yes"
end

template "pagespeed.conf" do
    path "/etc/apache2/mods-available/pagespeed.conf"
    source "pagespeed.conf.erb"
end

directory "/var/cache/mod_pagespeed" do
  owner "www-data"
  group "www-data"
  mode 00775
  action :create
end


service "apache2" do
  action :restart
end
