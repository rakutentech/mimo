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

include_recipe 'nodejs::default' if node['mimo']['use_nodejs']

node['mimo']['packages'].each do |p|
  package p
end

user node['mimo']['user'] do
  comment 'Mimo user'
  system true
  action :create
end

git node['mimo']['path'] do
  repository node['mimo']['repository']
  revision node['mimo']['revision']
  retries 5
  action :sync
end

nodejs_npm 'mimo' do
  path node['mimo']['path']
  json true
end

include_recipe 'mimo::service'
