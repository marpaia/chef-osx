Description
===========

Installs Dropbox

Requirements
============

Mac OS X.

Attributes
==========

* `node['dropbox']['version']` - sets the version of dropbox
* `node['dropbox']['checksum']` - sets the sha256sum of the remote file.

Usage
=====

Include the 'dropbox' recipe in the node run list to install the Dropbox application.

License and Author
==================

Sets up a server to be a public nameserver. To modify resource records in the environment, modify the tinydns-data.erb template.

LICENSE AND AUTHOR
==================

Author:: Mike Arpaia (<mike@arpaia.co>)

Copyright 2011, Mike Arpaia

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
