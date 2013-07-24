execute "change shell to zsh" do
  command "chsh -s /bin/sh"
  not_if "printenv SHELL | grep '/bin/zsh'"
end

cookbook_file "#{ENV['HOME']}/.zshrc" do
  source "oh-my-zsh/zshrc"
end

remote_directory "#{ENV['HOME']}/.oh-my-zsh" do
  source "oh-my-zsh/oh-my-zsh"
end
