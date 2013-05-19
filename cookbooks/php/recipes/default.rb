homebrew_tap "homebrew/dupes" do
  action :tap
  not_if "brew tap | grep 'homebrew/dupes'"
end

homebrew_tap "josegonzalez/homebrew-php" do
  action :tap
  not_if "brew tap | grep 'josegonzalez/php'"
end

execute "move default php" do
  command "sudo mv /usr/bin/php /usr/bin/php-default-os-x"
  only_if { ::File.exist?("/usr/bin/php") }
end
