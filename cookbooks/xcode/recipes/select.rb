execute "xcode-select" do
  command "sudo xcode-select -switch /Library/Developer/"
  not_if "xcode-select --print-path | grep '/Library/Developer'"
end
