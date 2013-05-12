name "mac_os_x"
description "Role applied to Mac OS X systems."
run_list(
  "recipe[homebrew]",
  "recipe[1password]",
  #"recipe[dropbox]",
  #"recipe[googlechrome]"
)
