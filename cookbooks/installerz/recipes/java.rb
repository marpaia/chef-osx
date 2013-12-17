dmg_package "JDK 7 Update 45" do
  source "http://download.oracle.com/otn-pub/java/jdk/7u45-b18/jdk-7u45-macosx-x64.dmg"
  checksum "841c4700ca55d199f7ad90fdb487a81ee59d77dabbb14f6e40f9d3bec7a34824"
  action :install
  only_if {"java -version | grep '1.7'"}
end
