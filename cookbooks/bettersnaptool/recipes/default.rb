cookbook_file "#{ENV['HOME']}/Library/Preferences/com.hegenberg.BetterSnapTool.plist" do
  source "com.hegenberg.BetterSnapTool.plist"
  only_if { ::File.directory?("/Applications/BetterSnapTool.app") }
end
