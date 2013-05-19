remote_directory "#{ENV['HOME']}/github" do
  source "github"
  not_if { File.directory?("#{ENV['HOME']}/github") }
end
