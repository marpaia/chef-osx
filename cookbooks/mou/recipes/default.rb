remote_file "#{Chef::Config[:file_cache_path]}/Mou.zip" do
  source "http://mouapp.com/download/Mou.zip"
  checksum "100812cbc200b9b0e6acceee5c778641e6540c6e1620337594ea52443880a31e"
  not_if { ::File.directory?("/Applications/Mou.app") }
end

execute "unzip mou" do
  command "unzip #{Chef::Config[:file_cache_path]}/Mou.zip"
  cwd "/Applications"
  not_if { ::File.directory?("/Applications/Mou.app") }
end
