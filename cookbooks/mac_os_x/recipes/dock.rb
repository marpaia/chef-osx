mac_os_x_userdefaults "com.apple.dock tilesize" do
  domain "com.apple.dock"
  key "tilesize"
  value 28
end


mac_os_x_userdefaults "com.apple.dock autohide" do
  domain "com.apple.dock"
  key "autohide"
  value 1
end

mac_os_x_userdefaults "com.apple.dock pinning" do
  domain "com.apple.dock"
  key "pinning"
  value "start"
end

mac_os_x_userdefaults "com.apple.dock largesize" do
  domain "com.apple.dock"
  key "largesize"
  value 32
end

mac_os_x_userdefaults "com.apple.dock minimize-to-application" do
  domain "com.apple.dock"
  key "minimize-to-application"
  value 1
end

mac_os_x_userdefaults "com.apple.dock orientation" do
  domain "com.apple.dock"
  key "orientation"
  value "left"
end

mac_os_x_userdefaults "com.apple.dock dashboard-in-overlay" do
  domain "com.apple.dock"
  key "dashboard-in-overlay"
  value 1
end

execute "killall Dock" do
  command "killall Dock"
end
