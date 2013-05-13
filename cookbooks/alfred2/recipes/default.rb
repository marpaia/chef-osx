admins = data_bag('admins')

admins.each do |admin|
  cookbook_file "/Users/#{admin}/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist" do
    source "com.runningwithcrayons.Alfred-Preferences.plist"
  end
end
