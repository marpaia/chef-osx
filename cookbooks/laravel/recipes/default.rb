remote_file "#{Chef::Config[:file_cache_path]}/laravel-laravel-v3.2.14-103-g6a1d203.zip" do
  source "http://laravel.com/download"
  checksum "6091ceafdd49bc29a14c22a822d989e7951151a5480f5b14871ceafecb90db2b"
end

execute "unzip laravel" do
  command "unzip #{Chef::Config[:file_cache_path]}/laravel-laravel-v3.2.14-103-g6a1d203.zip"
  cwd "#{ENV['HOME']}"
  not_if { ::File.directory?("#{ENV['HOME']}/www") }
end

execute "mv laravel" do
  command "mv #{ENV['HOME']}/laravel-laravel-6a1d203 #{ENV['HOME']}/www"
  only_if { ::File.directory?("#{ENV['HOME']}/laravel-laravel-6a1d203") }
end

execute "make views public" do
  command "chmod 777 #{ENV['HOME']}/www/storage/views"
end
