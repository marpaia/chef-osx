To use
======
- Install OS X command line tools
- Install chef (`curl -L https://opscode.com/chef/install.sh | sudo bash`)
- Install valid Chef certificates and configurations
- ``sudo mkdir -p /var/chef && sudo chown -R `whoami`:staff /var/chef``
- ``sudo mkdir -p /usr/local && sudo chown -R `whoami`:staff /usr/local``
- Modify `client.rb` to point to your `cookbooks` directory
- Modify the `roles/mac_os_x.json` file to only run the recipes that you'd like it to
- `chef-solo -c client.rb -j roles/mac_os_x.json`

Considerations
==============
I run Chef as my own user, not root, so you have to have the permissions to modify certain directories. Notably, `/var/chef` and `/usr/local`.

Disclaimer
==========
Although I fully encourage anyone and everyone to manage the configurations of their computers with a configuration management framework like Chef, this is a very customized and personalized Chef repository. Don't blindy run the `mac_os_x` role on your computer without fully understanding what each recipe in the runlist does. A Chef run may irrevocably change the configurations of your computer and that could be undesirable.
