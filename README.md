To use
======
- Install OS X command line tools
- Install chef (curl -L https://opscode.com/chef/install.sh | sudo bash)
- Install valid chef certificates and configurations
- sudo mkdir -p /var/chef && sudo chown -R \`whoami\`:staff /var/chef
- sudo mkdir -p /usr/local && sudo chown -R \`whoami\`:staff /usr/local
- chef-client