users.each do |user|
  user['directories'].each do |dir|
    directory "#{user['homedir']}/#{dir}" do
      owner user["username"]
      group user["group"]
      mode "0700"
      recursive true
    end
  end
end
