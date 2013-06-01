python_pip "pylint"

cookbook_file "#{ENV['HOME']}/.pylintrc" do
  source "pylintrc"
end
