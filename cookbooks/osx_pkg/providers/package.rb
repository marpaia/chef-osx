#
# Cookbook Name:: osx_pkg
# Provider:: package
#
# Copyright 2012, Alex Ernst
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

def load_current_resource
  @osx_pkg = Chef::Resource::OsxPkgPackage.new(new_resource.name)
  Chef::Log.debug("Checking for package #{new_resource.name}")
 @osx_pkg.installed(installed?)
end

action :install do
  unless @osx_pkg.installed
    pkg_file = new_resource.source.split('/').last
    downloaded_file = "#{Chef::Config[:file_cache_path]}/#{pkg_file}"

    remote_file downloaded_file do
      source    new_resource.source
      checksum  new_resource.checksum if new_resource.checksum
    end

    execute "Executing package #{pkg_file}" do
      command "sudo installer -pkg #{downloaded_file} -target /"
    end
  end
end

private

def installed?
	system("pkgutil --pkgs=#{new_resource.package_id}") ||
    system("pkgutil --pkgs=.*#{new_resource.name}.*")
end
