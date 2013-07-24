cookbook_file "#{ENV['HOME']}/.zshrc" do
  source "zprezto/runcoms/zshrc"
end

cookbook_file "#{ENV['HOME']}/.zlogin" do
  source "zprezto/runcoms/zlogin"
end

cookbook_file "#{ENV['HOME']}/.zlogout" do
  source "zprezto/runcoms/zlogout"
end

cookbook_file "#{ENV['HOME']}/.zpreztorc" do
  source "zprezto/runcoms/zpreztorc"
end

cookbook_file "#{ENV['HOME']}/.zprofile" do
  source "zprezto/runcoms/zprofile"
end

cookbook_file "#{ENV['HOME']}/.zshenv" do
  source "zprezto/runcoms/zshenv"
end

remote_directory "#{ENV['HOME']}/.zprezto" do
  source "zprezto"
end
