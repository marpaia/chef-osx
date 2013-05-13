mac_os_x_userdefaults "com.apple.finder NSNavPanelExpandedStateForSaveMode" do
  domain "com.apple.finder"
  key "NSNavPanelExpandedStateForSaveMode"
  value "1"
end

mac_os_x_userdefaults "com.apple.finder ShowHardDrivesOnDesktop" do
  domain "com.apple.finder"
  key "ShowHardDrivesOnDesktop"
  value 0
end

mac_os_x_userdefaults "com.apple.finder AppleShowAllFiles" do
  domain "com.apple.finder"
  key "AppleShowAllFiles"
  value 0
end

execute "com.apple.finder iconSize" do
  command '/usr/libexec/PlistBuddy -c "set DesktopViewSettings:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist'
end

execute "com.apple.finder arrangeBy" do
  command '/usr/libexec/PlistBuddy -c "set DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist'
end
