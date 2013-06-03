execute "install chef gem" do
  command "gem install chef"
  not_if "gem list | grep chef"
end

execute "install sinatra gem" do
  command "gem install sinatra"
  not_if "gem list | grep sinatra"
end

execute "install jekyll gem" do
  command "gem install jekyll"
  not_if "gem list | grep jekyll"
end

execute "install lolcat gem" do
  command "gem install lolcat"
  not_if "gem list | grep lolcat"
end

execute "install github gem" do
  command "gem install github"
  not_if "gem list | grep github"
end

execute "install gist gem" do
  command "gem install gist"
  not_if "gem list | grep gist"
end
