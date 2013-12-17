directories = [
  "/usr/local",
  "/usr/local/Cellar"
]

directories.each do |dir|
  directory dir do
    owner "root"
    group "wheel"
    mode "0775"
    recursive true
  end
end
