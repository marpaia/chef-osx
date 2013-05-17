dmg_package "Dropbox" do
  app "Dropbox"
  volumes_dir "Dropbox Installer"
  source node['dropbox']['source']
  checksum node['dropbox']['checksum']
  action :install
  not_if { ::File.directory?("/Applications/Dropbox.app") }
end
