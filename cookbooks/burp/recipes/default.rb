remote_file "#{ENV['HOME']}/Tools/burp.jar" do
  source "http://portswigger.net/burp/burpsuite_free_v1.5.jar"
  checksum "8596fed86278cfa607333358b688a07df4e4c3fc13be42b7ecd6672e4708d641"
  not_if { File.exists?("~/Tools/burp.jar") }
end
