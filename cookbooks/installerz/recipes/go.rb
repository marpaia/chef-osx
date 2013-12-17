osx_pkg_package "go1.2.darwin-amd64" do
  source "https://go.googlecode.com/files/go1.2.darwin-amd64-osx10.8.pkg"
  checksum "c41b722c4f6d92208c013c88af6ebe7c2232d04544114a57dcb19a124dc3316c"
  not_if {File.exist? 'usr/local/go/bin/go'}
end
