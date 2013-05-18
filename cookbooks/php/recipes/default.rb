homebrew_tap "homebrew/dupes" do
  action :tap
  not_if "brew tap | grep 'homebrew/dupes'"
end

homebrew_tap "josegonzalez/homebrew-php" do
  action :tap
  not_if "brew tap | grep 'josegonzalez/php'"
end
