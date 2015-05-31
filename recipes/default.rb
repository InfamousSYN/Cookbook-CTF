#
# Cookbook Name:: CTF-Cookbook
# Recipe:: default
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

# Included recipes.
include_recipe 'apt::default'

if node['libraries']['multiarch']
	include_recipe 'CTF-Cookbook::x86_libraries'
end

# Installs defined additional packages
node[:applications][:packages].each do |pkg|
	package "#{pkg}" do
		action :install
	end
end

include_recipe 'CTF-Cookbook::ctf-tools'