package "memcached" do
  action :install
  version node['memcached']['version']
end

execute "enable memcached" do
  command "cp /usr/local/Cellar/memcached/#{node['memcached']['version']}/homebrew.mxcl.memcached.plist #{ENV['HOME']}/Library/LaunchAgents/ && launchctl load -w #{ENV['HOME']}/Library/LaunchAgents/homebrew.mxcl.memcached.plist"
end
