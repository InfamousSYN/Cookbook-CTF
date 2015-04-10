#
# Cookbook Name:: CTF-Cookbook
# Recipe:: x86_libraries
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#


execute "Adding i386 architectures" do
 command "dpkg --add-architecture i386"
end

execute "Updating APT" do
 command "apt-get update"
 ignore_failure true
end

node[:libraries][:i386].each do |i386_package|
 package i386_package do
  action :install
 end
end

execute "Updating apt-get" do
 command "apt-get update"
 ignore_failure true
end

execute "Upgrading Instance" do
 command "apt-get -yq upgrade"
 ignore_failure true
end

