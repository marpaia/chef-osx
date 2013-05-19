dmg_package "GPGTools_Installer" do
  dmg_name "GPGTools_Installer"
  type "pkg"
  source "https://s3.amazonaws.com/gpgtools/GPGTools-20130330.dmg"
  checksum "23558e988c1efc38d4a53fa436b58ffe031d60c8868dc44b8061d3b9f2675bc2"
  action :install
  not_if { File.directory?("/Applications/GPG Keychain Access.app") }
end
