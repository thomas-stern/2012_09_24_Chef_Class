maintainer       "Tom Stern"
maintainer_email "thomas@rightscale.com"
license          "All rights reserved"
description      "Installs/Configures tomdemo"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

recipe "tomdemo::helloworld", "Prints hello world"

attribute "tomdemo/apache_package_name",
  :display_name => "Apache Package Name",
  :description => "An override for the apache package name",
  :default => 'apache2',
  :recipes => ["tomdemo::helloworld"]

