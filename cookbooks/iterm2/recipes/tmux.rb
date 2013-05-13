if node['platform_version'].to_f < 10.7
  Chef::Log.warn("This recipe supports OS X Lion for iTerm 2's special flavor of tmux")
  Chef::Log.warn("Earlier versions of OS X are not supported at this time.")
  return
end

install_tmux_command = []
tmux_checksum = node['iterm2']['tmux_checksum']

if node['iterm2']['tmux_compile']
  install_tmux_command << 'sh autogen.sh'
  install_tmux_command << './configure'
  install_tmux_command << 'make'
end

install_tmux_command << 'make install'
tmux_tar = "tmux-for-iTerm2-#{node['iterm2']['tmux_version']}.tar.gz"
tmux_url = "http://iterm2.googlecode.com/files/#{tmux_tar}"

package "tmux" do
  action :remove
end

package "libevent" do
  action :install
  version "2.0.21"
end

remote_file "#{Chef::Config[:file_cache_path]}/#{tmux_tar}" do
  source tmux_url
  checksum tmux_checksum
  notifies :delete, "file[#{Chef::Config[:file_cache_path]}/.tmux-for-iTerm2-installed]", :immediately
end

# This is done using sudo rather than Chef::Util::FileEdit because
# Chef is not necessarily running as root.
directory "/usr/share/aclocal" do
  owner "root"
  group "wheel"
  mode 00755
  action :create
end

execute "autoconf directory to brew" do
  command "echo $(brew --prefix)/share/aclocal | sudo tee -a /usr/share/aclocal/dirlist"
  not_if "grep -qx $(brew --prefix)/share/aclocal /usr/share/aclocal/dirlist"
end

execute "untar tmux-for-iTerm2" do
  command "tar -zxf #{tmux_tar}"
  cwd Chef::Config[:file_cache_path]
  not_if { ::File.exists?("#{Chef::Config[:file_cache_path]}/.tmux-for-iTerm2-installed") }
  notifies :run, "execute[install tmux-for-iTerm2]", :immediately
end

execute "install tmux-for-iTerm2" do
  command install_tmux_command.join(" && ")
  cwd "#{Chef::Config[:file_cache_path]}/tmux"
  action :nothing
end

file "#{Chef::Config[:file_cache_path]}/.tmux-for-iTerm2-installed"
