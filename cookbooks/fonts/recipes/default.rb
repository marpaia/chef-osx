remote_file "/Library/Fonts/Inconsolata.otf" do
  source "http://www.levien.com/type/myfonts/Inconsolata.otf"
  checksum "1561e616c414a1b82d6e6dfbd18e5726fd65028913ade191e5fa38b6ec375a1a"
  not_if "ls /Library/Fonts/ | grep Inconsolata.otf"
end
