package "python" do
  action :install
  options "--universal"
end

package "python3" do
  action :install
  options "--universal"
end

execute "move the system python" do
  command "mv /usr/bin/python /usr/bin/python-original"
  only_if {File.exists?("/usr/bin/python")}
end
