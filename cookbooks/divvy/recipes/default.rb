cookbook_file "#{ENV['HOME']}/Library/Preferences/com.mizage.Divvy.plist" do
  source "com.mizage.Divvy.plist"
  only_if { ::File.directory?("/Applications/Divvy.app") }
end
