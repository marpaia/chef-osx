osx_pkg_package "R-3.0.1" do
  source "http://watson.nci.nih.gov/cran_mirror/bin/macosx/R-3.0.1.pkg"
  checksum "c0e6e702742f17cd9b2f2e4cb1c5dcad"
  not_if { File.directory?("/Applications/R.app") }
end

dmg_package "RStudio-0.97.551" do
  app "RStudio"
  dmg_name "RStudio-0.97.551"
  volumes_dir "RStudio-0.97.551"
  source "http://download1.rstudio.org/RStudio-0.97.551.dmg"
  checksum "896b27e9700d3e8e424c5e3fd5f6a3c3"
  action :install
  not_if { ::File.directory?("/Applications/RStudio.app") }
end
