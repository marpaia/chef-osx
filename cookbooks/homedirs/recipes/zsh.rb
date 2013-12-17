users.each do |user|
  if user['zsh'] == true
    execute "change shell to zsh" do
      command "chsh -s /bin/zsh #{user['username']}"
      not_if "finger #{user['username']} | grep 'Shell:\s/bin/zsh$'"
    end
  end
end
