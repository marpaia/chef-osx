execute "install nsf/gocode" do
 command "go get -u github.com/nsf/gocode"
 not_if { ::File.directory?("#{ENV['GOPATH']}/src/github.com/nsf/gocode") }
end
