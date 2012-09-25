maintainer       "Tom Stern"
maintainer_email "thomas@rightscale.com"
license          "All rights reserved"
description      "Installs/Configures tomdemo"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

recipe "tomdemo::helloworld", "Prints hello world"
recipe "tomdemo::foo_install", "Moves foo.text to /temp/foo.txt"
recipe "tomdemo::change_index", "Changes the /var/www.index.html content"

attribute "tomdemo/apache_package_name",
  :display_name => "Apache Package Name",
  :description => "An override for the apache package name",
  :default => 'apache2',
  :recipes => ["tomdemo::helloworld"]

attribute "tomdemo/my_name",
  :display_name => "My Name",
  :description => "My name for the index.html.file",
  :recipes => ["tomdemo::change_index"]

