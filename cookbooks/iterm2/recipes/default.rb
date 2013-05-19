unless ::File.directory?("/Applications/iTerm.app")
  remote_file "#{Chef::Config[:file_cache_path]}/iTerm2-#{node['iterm2']['version']}.zip" do
    source "http://iterm2.googlecode.com/files/iTerm2-#{node['iterm2']['version']}.zip"
    checksum node['iterm2']['checksum']
  end

  execute "untar iTerm2" do
    command "unzip #{Chef::Config[:file_cache_path]}/iTerm2-#{node['iterm2']['version']}.zip"
    cwd "/Applications"
    not_if { File.directory?("/Applications/iTerm.app") }
  end
end
