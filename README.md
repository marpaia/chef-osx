To use
======

Assuming that you have OS X command line tools (git, etc.) installed:

```
# Install Chef
curl -L https://opscode.com/chef/install.sh | sudo bash
# Modify the permissions on relevant directories
sudo mkdir -p /var/chef && sudo chown -R `whoami`:staff /var/chef
sudo mkdir -p /usr/local && sudo chown -R `whoami`:staff /usr/local
# Check out the repo
mkdir -p ~/github && cd ~/github
git clone git@github.com:marpaia/chef-osx.git
# Run chef-solo
cd ~/github/chef-osx
chef-solo -c client.rb -j roles/mac_os_x.json
```


If you'd like to keep this chef repository somewhere besides `~/github`, modify
the value for `cookbook_path` in `client.rb`. If you'd like to run a particular subset of the cookbooks in this chef repository, modify `roles/mac_os_x.json` or
create a new role json file with a more customized run_list.

Considerations
==============

I run Chef as my own user, not root, so you have to have the permissions to
modify certain directories. Notably, `/var/chef` and `/usr/local`.

Disclaimer
==========

Although I fully encourage anyone and everyone to manage the configurations of
their computers with a configuration management framework like Chef, this is a
very customized and personalized Chef repository. Don't blindy run the
`mac_os_x` role on your computer without fully understanding what each recipe
in the runlist does. A Chef run may irrevocably change the configurations of
your computer and that could be undesirable.
