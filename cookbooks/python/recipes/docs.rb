home = default_user['homedir']

remote_file "#{Chef::Config[:file_cache_path]}/python-2.7.6-docs-html.zip" do
  source "http://docs.python.org/2/archives/python-2.7.6-docs-html.zip"
  checksum "cd04a6236c59f412b5a0ab72068dc496c93d94488b861b8cc6ed686b17b5fab2"
  not_if { ::File.directory?("#{home}/docs/python-2.7.5-docs-html") }
end

remote_file "#{Chef::Config[:file_cache_path]}/python-2.7.6-docs-text.zip" do
  source "http://docs.python.org/2/archives/python-2.7.6-docs-text.zip"
  checksum "135a3acef88de5969a7982ced6bd05706936ec7fd2350941cfa663f95b63cd50"
  not_if { ::File.directory?("#{home}/docs/python-2.7.5-docs-text") }
end

execute "unzip html docs" do
  command "unzip #{Chef::Config[:file_cache_path]}/python-2.7.6-docs-html.zip"
  cwd "#{home}/docs"
  not_if { ::File.directory?("#{home}/docs/python-2.7.6-docs-html") }
end

execute "unzip text docs" do
  command "unzip #{Chef::Config[:file_cache_path]}/python-2.7.6-docs-text.zip"
  cwd "#{home}/docs"
  not_if { ::File.directory?("#{home}/docs/python-2.7.6-docs-text") }
end
