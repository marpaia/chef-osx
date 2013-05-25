remote_directory "#{ENV['HOME']}/.weechat" do
  source "weechat"
end

package "aspell" do
  action :install
  version "0.60.6.1"
  options("--with-lange-en")
end

execute "install weechat 3.9.2" do
  command "brew install https://raw.github.com/mxcl/homebrew/c4bcf321c6a6731d7b79519fd072e6afba5926e5/Library/Formula/weechat.rb --aspell --perl --python --ruby"
  not_if { File.exist? '/usr/local/bin/weechat-curses' }
end
