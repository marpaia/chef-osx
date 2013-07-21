execute "create ipython configurations" do
	command "ipython profile create"
  not_if { File.directory?("#{ENV['HOME']}/.ipython/profile_default") }
end

cookbook_file "#{ENV['HOME']}/.ipython/profile_default/ipython_config.py" do
  source "ipython/profile_default/ipython_config.py"
end

cookbook_file "#{ENV['HOME']}/.ipython/profile_default/ipython_notebook_config.py" do
  source "ipython/profile_default/ipython_notebook_config.py"
end
