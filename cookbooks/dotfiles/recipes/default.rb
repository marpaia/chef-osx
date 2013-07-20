cookbook_file "#{ENV['HOME']}/.vimrc" do
  source "vimrc"
end

cookbook_file "#{ENV['HOME']}/.gitconfig" do
  source "gitconfig"
end

cookbook_file "#{ENV['HOME']}/.git-completion.bash" do
  source "git-completion.bash"
end

remote_directory "#{ENV['HOME']}/.ssh" do
  source "ssh"
end

package "tmux" do
  action :install
  version "1.8"
end
