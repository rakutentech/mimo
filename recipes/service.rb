#
# Cookbook Name:: mimo
# Recipe:: default
#
# Copyright (C) 2015 Rakuten, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

service 'mimo' do
  supports :restart => true
  action :nothing
end

template '/etc/init/mimo.conf' do
  source 'upstart.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
  variables(
    :app_name => 'mimo',
    :logfile => node['mimo']['logfile'],
    :path => node['mimo']['path'],
    :username => node['mimo']['user'],
    :node_env => node['mimo']['node_env']
  )
  notifies :restart, 'service[mimo]', :immediately
end
