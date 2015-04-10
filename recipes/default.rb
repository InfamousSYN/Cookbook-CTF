#
# Cookbook Name:: CTF-Cookbook
# Recipe:: default
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

# Included recipes.
include_recipe 'CTF-Cookbook::x86_libraries'
include_recipe 'CTF-Cookbook::setup-files'

# Installed the defined packages.
node[:applications][:packages].each do |pkg|
 package "#{pkg}" do
  action :install
 end
end

# Reboots host before use.
execute "Rebooting Instance" do
 command "reboot"
 ignore_failure true
end
