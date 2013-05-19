unless ::File.directory?("/Applications/Spotify.app")
  remote_file "#{Chef::Config[:file_cache_path]}/SpotifyInstaller.zip" do
    source "http://download.spotify.com/SpotifyInstaller.zip"
    checksum "5771c5300c2e8ca808c61a5a29505637d872e8d546b758361a6ca50cf2500bbb"
  end

  execute "unzip spotify" do
    command "unzip #{Chef::Config[:file_cache_path]}/SpotifyInstaller.zip"
    cwd "/tmp"
  end

  execute "download spotify" do
    command "open /tmp/Install\\ Spotify.app/"
  end

  execute "remove install app" do
    command "rm -r /tmp/Install\\ Spotify.app/"
  end
end
