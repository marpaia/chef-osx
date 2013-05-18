execute "turn on accessibility" do
  command "echo 'a' | sudo tee /private/var/db/.AccessibilityAPIEnabled"
  not_if "file /private/var/db/.AccessibilityAPIEnabled"
end
