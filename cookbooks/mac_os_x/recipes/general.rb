mac_os_x_userdefaults "NSGlobalDomain AppleShowAllExtensions" do
  domain "NSGlobalDomain"
  key "AppleShowAllExtensions"
  value "1"
end

mac_os_x_userdefaults "NSGlobalDomain NSNavPanelExpandedStateForSaveMode" do
  domain "NSGlobalDomain"
  key "NSNavPanelExpandedStateForSaveMode"
  value "1"
end

mac_os_x_userdefaults "NSGlobalDomain NSTableViewDefaultSizeMode" do
  domain "NSGlobalDomain"
  key "NSTableViewDefaultSizeMode"
  value "1"
end

mac_os_x_userdefaults "com.apple.menuextra.battery ShowPercent" do
  domain "com.apple.menuextra.battery"
  key "ShowPercent"
  value "1"
end

mac_os_x_userdefaults "NSGlobalDomain NSDocumentSaveNewDocumentsToCloud" do
  domain "NSGlobalDomain"
  key "NSDocumentSaveNewDocumentsToCloud"
  value "0"
end

mac_os_x_userdefaults "com.apple.SoftwareUpdate ScheduleFrequency" do
  domain "com.apple.SoftwareUpdate"
  key "ScheduleFrequency"
  value "1"
end

mac_os_x_userdefaults "com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking" do
  domain "com.apple.driver.AppleBluetoothMultitouch.trackpad"
  key "Clicking"
  value "1"
end

mac_os_x_userdefaults "com.apple.CrashReporter DialogType" do
  domain "com.apple.CrashReporter"
  key "DialogType"
  value "none"
end

mac_os_x_userdefaults "com.apple.desktopservices DSDontWriteNetworkStores" do
  domain "com.apple.desktopservices"
  key "DSDontWriteNetworkStores"
  value "1"
end

mac_os_x_userdefaults "com.apple.dashboard mcx-disabled" do
  domain "com.apple.dashboard"
  key "mcx-disabled"
  value "1"
end

execute "chflags nohidden ~/Library" do
  command "chflags nohidden ~/Library"
end

mac_os_x_userdefaults "com.apple.TimeMachine DoNotOfferNewDisksForBackup" do
  domain "com.apple.TimeMachine"
  key "DoNotOfferNewDisksForBackup"
  value "1"
end

execute "hide time machine" do
  command 'defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Displays.menu" "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Volume.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu"'
end

execute "killall SystemUIServer" do
  command "killall SystemUIServer"
end
