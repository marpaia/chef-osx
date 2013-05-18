execute "install chef gem" do
  command "gem install chef"
  not_if "gem list | grep chef"
end
