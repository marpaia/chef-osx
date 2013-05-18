package "php53" do
  action :install
  version "5.3.25"
end

package "php53-apc" do
  action :install
  version "3.1.10"
end

package "php53-memcached" do
  action :install
  version "2.1.0"
end

package "php53-solr" do
  action :install
  version "1.0.2"
end
