execute "xcode-select" do
  command "sudo xcode-select -switch /Library/Developer/"
  not_if { ::File.directory?("/Applications/Xcode.app/") }
end
