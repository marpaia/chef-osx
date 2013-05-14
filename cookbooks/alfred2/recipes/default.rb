cookbook_file "#{ENV['HOME']}/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist" do
  source "com.runningwithcrayons.Alfred-Preferences.plist"
  only_if { ::File.directory?("/Applications/Alfred 2.app") }
end
