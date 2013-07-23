osx_pkg_package "go1.1.1.darwin-amd64" do
  source "https://go.googlecode.com/files/go1.1.1.darwin-amd64.pkg"
  checksum "4b63f264401a562be41335b2b631c5750ecf2cf1"
  not_if { File.exist? '/usr/local/go/bin/go' }
end
