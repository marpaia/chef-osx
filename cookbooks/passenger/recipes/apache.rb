execute "install passenger apache2 module" do
  command "yes | rvmsudo passenger-install-apache2-module"
  only_if "find #{ENV['HOME']} -name mod_passenger.so 2>/dev/null"
end
