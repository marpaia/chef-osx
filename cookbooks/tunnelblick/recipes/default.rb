dmg_package "Tunnelblick" do
  app "Tunnelblick"
  volumes_dir "Tunnelblick"
  source "https://tunnelblick.googlecode.com/files/Tunnelblick_#{node['tunnelblick']['version']}.dmg"
  action :install
  not_if { ::File.directory?("/Applications/Tunnelblick.app") }
end
