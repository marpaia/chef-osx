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
