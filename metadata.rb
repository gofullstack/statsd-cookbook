maintainer       "Cramer Development"
maintainer_email "sysadmin@cramerdev.com"
license          "Apache 2.0"
description      "Installs/Configures statsd"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.2"

depends "build-essential"
depends "git"
depends "nodejs"
%w[ centos redhat ubuntu ].each do |platform|
  supports platform
end
