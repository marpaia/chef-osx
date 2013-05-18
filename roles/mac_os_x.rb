name "mac_os_x"
description "Role applied to Mac OS X systems."
run_list(
  "recipe[xcode::select]",
  "recipe[homebrew]",
  "recipe[commandlinetools]",
  "recipe[1password]",
  "recipe[dmg]",
  "recipe[tunnelblick]",
  "recipe[dropbox]",
  "recipe[googlechrome]",
  "recipe[mac_os_x]",
  "recipe[mac_os_x::dock]",
  "recipe[mac_os_x::firewall]",
  "recipe[mac_os_x::finder]",
  "recipe[mac_os_x::firewall]",
  "recipe[mac_os_x::screensaver]",
  "recipe[iterm2]",
  "recipe[divvy]",
  "recipe[bettersnaptool]",
  "recipe[alfred2]",
  "recipe[googledrive]",
  "recipe[dotfiles]",
  "recipe[rvm]",
  "recipe[rvm::rubies]",
  "recipe[rvm::gems]"
)
