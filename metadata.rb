maintainer       "moratilla.com"
maintainer_email "jorge@moratilla.com"
license          "All rights reserved"
description      "Installs/Configures hazelcast"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

recipe "hazelcast","Downloads, installs and configures standalone node"

#TODO: include java depends
%w{ java ark }.each do |cb|
  depends cb
end

%w{ ubuntu debian centos redhat amazon scientific oracle fedora }.each do |os|
  supports os
end
