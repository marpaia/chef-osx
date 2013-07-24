package "cmake" do
  action :install
  version "2.8.11.2"
end

package "aspell" do
  action :install
  version "0.60.6.1"
  options("--with-lange-en")
end
