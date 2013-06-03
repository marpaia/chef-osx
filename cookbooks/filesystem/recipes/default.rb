directory "#{ENV['HOME']}/Tools" do
  owner ENV['USER']
  group "staff"
  mode "0700"
  recursive true
end
