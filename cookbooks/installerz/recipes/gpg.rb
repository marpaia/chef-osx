dmg_package "GPG Suite" do
  dmg_name "GPG Suite"
  type "pkg"
  source "https://releases.gpgtools.org/GPG%20Suite%20-%202013.10.22.dmg"
  checksum "d37ccf01e5ddd07dd84b76574e99b605ca9ead89cb0c6c126f4045e271eb3841"
  action :install
  not_if { File.directory?("/Applications/GPG Keychain Access.app") }
end
