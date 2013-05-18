execute "install 1.9.3" do
  command "rvm install 1.9.3"
  not_if "rvm list | grep '1.9.3'"
end

execute "install 2.0.0" do
  command "rvm install 2.0.0"
  not_if "rvm list | grep '2.0.0'"
end

execute "create global gemset" do
  command "rvm gemset create global"
  not_if "rvm gemset list | grep global"
end

execute "set default ruby" do
  command "rvm --default use 1.9.3@global"
  only_if "rvm gemset list | grep global"
end
