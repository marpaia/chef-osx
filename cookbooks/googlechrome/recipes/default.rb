dmg_package "Google Chrome" do
  app "Google Chrome"
  dmg_name "googlechrome"
  source node['googlechrome']['source']
  checksum node['googlechrome']['checksum']
  action :install
  not_if { ::File.directory?("/Applications/Google\ Chrome.app") }
end
