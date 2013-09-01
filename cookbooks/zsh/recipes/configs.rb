execute "change shell to zsh" do
  command "chsh -s /bin/sh"
  not_if "printenv SHELL | grep '/bin/zsh'"
end

cookbook_file "#{ENV['HOME']}/.zshrc" do
  source "zsh/zshrc"
end

remote_directory "#{ENV['HOME']}/.zsh" do
  source "zsh/zsh"
end
