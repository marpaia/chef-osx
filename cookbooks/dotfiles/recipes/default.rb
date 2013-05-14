cookbook_file "#{ENV['HOME']}/.bash_profile" do
  source "bashrc"
end

cookbook_file "#{ENV['HOME']}/.vimrc" do
  source "vimrc"
end

cookbook_file "#{ENV['HOME']}/.gitconfig" do
  source "gitconfig"
end

cookbook_file "#{ENV['HOME']}/.git-completion.bash" do
  source "git-completion.bash"
end

remote_directory "#{ENV['HOME']}/.vim" do
  source "vim"
end
