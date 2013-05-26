directory "#{ENV['HOME']}/docs" do
  owner ENV['USER']
  group "staff"
  mode "0700"
  recursive true
end

remote_file "#{Chef::Config[:file_cache_path]}/python-2.7.5-docs-html.zip" do
  source "http://docs.python.org/2/archives/python-2.7.5-docs-html.zip"
  checksum "c8b8f97e0a33753f121e80ea7d0c267be403f7f9894024d083efc6ee1b2bb6eb"
end

remote_file "#{Chef::Config[:file_cache_path]}/python-2.7.5-docs-text.zip" do
  source "http://docs.python.org/2/archives/python-2.7.5-docs-text.zip"
  checksum "35a157a8c765a535f6641566538628cbe7cf89502226f0938fd627fb94703234"
end

execute "unzip html docs" do
  command "unzip #{Chef::Config[:file_cache_path]}/python-2.7.5-docs-html.zip"
  cwd "#{ENV['HOME']}/docs"
  not_if { ::File.directory?("#{ENV['HOME']}/docs/python-2.7.5-docs-html") }
end

execute "unzip text docs" do
  command "unzip #{Chef::Config[:file_cache_path]}/python-2.7.5-docs-text.zip"
  cwd "#{ENV['HOME']}/docs"
  not_if { ::File.directory?("#{ENV['HOME']}/docs/python-2.7.5-docs-text") }
end
