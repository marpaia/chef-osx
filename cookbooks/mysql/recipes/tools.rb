execute "install perl dependencies" do
 command "sudo cpan -i DBD::mysql"
 not_if "ls #{ENV['HOME']}/.cpan/build | grep -i DBD-mysql"
end

package "percona-toolkit" do
  action :install
  version "2.2.2"
end
