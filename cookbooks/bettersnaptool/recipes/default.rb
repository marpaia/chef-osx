admins = data_bag('admins')

admins.each do |admin|
  cookbook_file "/Users/#{admin}/Library/Preferences/com.hegenberg.BetterSnapTool.plist" do
    source "com.hegenberg.BetterSnapTool.plist"
  end
end
