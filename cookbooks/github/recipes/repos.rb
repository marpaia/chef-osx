git "#{ENV['HOME']}/github/chef-osx" do
  repository "git@github.com:marpaia/chef-osx.git"
  action :sync
  user ENV['USER']
end
