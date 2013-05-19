execute "install chef gem" do
  command "gem install chef"
  not_if "gem list | grep chef"
end

execute "install sinatra gem" do
  command "gem install sinatra"
  not_id "gem list | grep sinatra"
end
