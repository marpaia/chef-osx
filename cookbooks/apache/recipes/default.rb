execute "own /etc/apache2" do
  command "sudo chown -R `whoami`:staff /etc/apache2"
  only_if "ls -l /private/etc/ | grep apache2 | grep `whoami`"
end

execute "own /etc/hosts" do
  command "sudo chown `whoami`:staff /etc/hosts"
  only_if "ls -l /private/etc/ | grep hosts | grep `whoami`"
end

cookbook_file "/etc/apache2/httpd.conf" do
  source "httpd.conf"
end

cookbook_file "/etc/apache2/extra/httpd-vhosts.conf" do
  source "httpd-vhosts.conf"
end

cookbook_file "/etc/hosts" do
  source "hosts"
end

execute "apache reload" do
  command "sudo apachectl graceful"
end

remote_directory "#{ENV['HOME']}/www" do
  source "www"
end
