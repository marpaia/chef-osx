execute "install rails gem" do
  command "gem install rails --version 4.0.0.rc1"
  not_if "gem list | grep rails"
end
