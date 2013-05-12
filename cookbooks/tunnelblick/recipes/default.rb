#
# Cookbook Name:: tunnelblick
# Recipe:: default
#
# Copyright 2011, Mike Arpaia
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

remote_file "#{Chef::Config[:file_cache_path]}/Tunnelblick_#{node['tunnelblick']['version']}.dmg" do
  checksum node['tunnelblick']['checksum']
  source "https://tunnelblick.googlecode.com/files/Tunnelblick_#{node['tunnelblick']['version']}.dmg"
end

dmg_package "Tunnelblick" do
  source "#{Chef::Config[:file_cache_path]}/Tunnelblick_#{node['tunnelblick']['version']}.dmg"
  action :install
  not_if { ::File.directory?("/Applications/Tunnelblick.app") }
end
