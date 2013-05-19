mac_os_x_userdefaults "enable OS X firewall" do
  domain "/Library/Preferences/com.apple.alf"
  key "globalstate"
  value "2"
  type "int"
  sudo true
end

mac_os_x_userdefaults "enable OS X firewall" do
  domain "/Library/Preferences/com.apple.alf"
  key "firewallunload"
  value "0"
  type "int"
  sudo true
end

mac_os_x_userdefaults "enable OS X firewall" do
  domain "/Library/Preferences/com.apple.alf"
  key "loggingenabled"
  value "1"
  type "int"
  sudo true
end

mac_os_x_userdefaults "enable OS X firewall" do
  domain "/Library/Preferences/com.apple.alf"
  key "stealthenabled"
  value "1"
  type "int"
  sudo true
end

execute "disable guest login AppleFileServer" do
  command "sudo defaults write /Library/Preferences/com.apple.AppleFileServer guestAccess 0"
  not_if "defaults read /Library/Preferences/com.apple.AppleFileServer guestAccess | grep 0"
end


execute "disable guest login smb server" do
  command "sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server AllowGuestAccess 0"
  not_if "defaults read /Library/Preferences/SystemConfiguration/com.apple.smb.server AllowGuestAccess | grep 0"
end

