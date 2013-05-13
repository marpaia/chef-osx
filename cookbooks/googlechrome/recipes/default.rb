dmg_package "Google Chrome" do
  app "Google Chrome"
  dmg_name "googlechrome"
  source "https://dl-ssl.google.com/chrome/mac/stable/GGRM/googlechrome.dmg"
  checksum node['googlechrome']['checksum']
  action :install
  not_if { ::File.directory?("/Applications/Google\ Chrome.app") }
end
