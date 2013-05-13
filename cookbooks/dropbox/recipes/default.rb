dmg_package "Dropbox" do
  app "Dropbox"
  volumes_dir "Dropbox Installer"
  checksum node['dropbox']['checksum']
  source "http://www.dropbox.com/download?plat=mac"
  action :install
  not_if { ::File.directory?("/Applications/Dropbox.app") }
end
