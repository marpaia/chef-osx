execute "change shell to zsh" do
  command "chsh -s /bin/sh"
  not_if "printenv SHELL | grep '/bin/zsh'"
end
