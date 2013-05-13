dmg_package "googledrive" do
  app "Google Drive"
  volumes_dir "Install Google Drive"
  source "https://dl.google.com/drive/installgoogledrive.dmg"
  checksum node['googledrive']['checksum']
  action :install
  not_if { ::File.directory?("/Applications/Google Drive.app") }
end
