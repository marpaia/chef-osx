execute "install rvm" do
  command "curl -L https://get.rvm.io | bash -s stable --ruby"
  not_if "which rvm"
end
