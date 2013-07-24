package "mysql" do
  action :install
  version "5.6.12"
  options("--enable-memcached")
end

execute "load mysql launchagent" do
  command "ln -sf /usr/local/opt/mysql/homebrew.mxcl.mysql.plist #{ENV['HOME']}/Library/LaunchAgents/homebrew.mxcl.mysql.plist; launchctl load #{ENV['HOME']}/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
  not_if { File.exists?("#{ENV['HOME']}/Library/LaunchAgents/homebrew.mxcl.mysql.plist")  }
end
