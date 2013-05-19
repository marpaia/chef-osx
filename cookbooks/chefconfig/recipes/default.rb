execute "install knife spork" do
  command "gem install knife-spork"
  not_if "gem list | grep knife-spork"
end
