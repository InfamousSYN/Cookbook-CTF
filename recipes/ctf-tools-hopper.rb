#
# Cookbook Name:: CTF-Cookbook
# Recipe:: ctf-tools-hopper
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

# Installs required dependencies and setup hopper.
node[:hopper][:depends].each do |hopper_depends|
	package hopper_depends do
		action :install
	end
end

cookbook_file "#{node['hopper']['package']}" do
	path "#{node['general']['dir']}/#{node['hopper']['package']}"
	action :create_if_missing
end

execute 'Installing Hopper debugger' do
	command "dpkg -i #{node['general']['dir']}/#{node['hopper']['package']}"
end

link "#{node['hopper']['dir']}/hopper-v3/hopper-launcher.sh" do
	to '/usr/bin/hopper'
end
