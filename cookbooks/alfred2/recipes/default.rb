unless ::File.directory?("/Applications/Alfred.app")
  remote_file "#{Chef::Config[:file_cache_path]}/Alfred_2.0.3_187.zip" do
    source "http://cachefly.alfredapp.com/Alfred_2.0.3_187.zip"
    checksum "d49b747ef4a2b49f401501f813f4cb345b899c691202f998233a03fea06bc0a9"
    not_if { ::File.directory?("/Applications/Alfred 2.app") }
  end

  execute "unzip alfred" do
    command "unzip #{Chef::Config[:file_cache_path]}/Alfred_2.0.3_187.zip" 
    cwd "/tmp"
    not_if { ::File.directory?("/Applications/Alfred 2.app") }
  end

  execute "install alfred" do
    command "mv /tmp/Alfred\\ 2.app /Applications"
    not_if { ::File.directory?("/Applications/Alfred 2.app") }
  end 

end

cookbook_file "#{ENV['HOME']}/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist" do
  source "com.runningwithcrayons.Alfred-Preferences.plist"
  only_if { ::File.directory?("/Applications/Alfred 2.app") }
end
