admins = data_bag('admins')

admins.each do |admin|
  cookbook_file "/Users/#{admin}/Library/Preferences/com.mizage.Divvy.plist" do
    source "com.mizage.Divvy.plist"
  end
end
