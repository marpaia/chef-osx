execute "install passenger gem" do
  command "gem install passenger"
  not_if "gem list | grep passenger"
end
