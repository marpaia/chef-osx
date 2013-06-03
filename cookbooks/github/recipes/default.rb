directory "#{ENV['HOME']}/github" do
  owner ENV['USER']
  group "staff"
  mode "0700"
  recursive true
end
