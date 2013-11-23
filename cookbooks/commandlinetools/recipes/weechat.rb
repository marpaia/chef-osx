package "cmake" do
  action :install
end

package "aspell" do
  action :install
  options("--with-lange-en")
end
