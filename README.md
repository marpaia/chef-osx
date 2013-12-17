To use
======

Assuming that you have OS X command line tools (git, etc.) installed, you just
need to install Chef and run `chef-solo`:

```
# Clone the repo
mkdir -p ~/github
git clone git@github.com:marpaia/chef-osx.git ~/github/chef-osx
# Install Chef
sudo bash ~/github/chef-osx/bin/install_chef.sh
# Run chef-solo
cd ~/github/chef-osx
sudo chef-solo -c solo.rb -j roles/mac_os_x.json
```

Considerations
==============

If you want to run this, add a file to the `users` data bag that defines your
user and modify the `default_users` data bag to point to your default user.

If you'd like to keep this chef repository somewhere besides `~/github`, modify
the value for `cookbook_path` in `solo.rb`. If you'd like to run a particular
subset of the cookbooks in this chef repository, modify `roles/mac_os_x.json`
or create a new role json file with a more customized run list.

Disclaimer
==========

Although I fully encourage anyone and everyone to manage the configurations of
their computers with a configuration management framework like Chef, this is a
very customized and personalized Chef repository. Don't blindy run the
`mac_os_x` role on your computer without fully understanding what each recipe
in the runlist does. A Chef run may irrevocably change the configurations of
your computer and that could be undesirable.
