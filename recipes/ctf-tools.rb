#
# Cookbook Name:: CTF-Cookbook
# Recipe:: ctf-tools
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

cookbook_file 'checksec.sh' do
	path "#{node['general']['dir']}/checksec.sh"
	owner node['general']['owner']
	group node['general']['group']
	mode node['general']['mode']
	action :create_if_missing
end

cookbook_file 'shellcode_examiner.c' do
	path "#{node['general']['dir']}/shellcode_examiner.c"
	owner node['general']['owner']
	group node['general']['group']
	mode node['general']['mode']
	action :create_if_missing
end

# Installs required dependencies and setup IDA Demo.
if node['ida']['enabled']
	cookbook_file "#{node['ida']['package']}" do
		path "#{node['general']['dir']}/#{node['ida']['package']}"
		owner node['general']['owner']
		group node['general']['group']
		mode node['general']['mode']
		action :create_if_missing
	end

	execute 'Unpacking IDA archive' do
		cwd "#{node['general']['dir']}"
		command "tar zxf #{node['general']['dir']}/#{node['ida']['package']}"
	end
end

# Installs required dependencies and setup Hopper Debugger.
if node['hopper']['enabled']
	include_recipe 'apt::default'

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
end

# Creates the Burp .jar file.
if node['java']['enabled']
	if node['burp']['enabled']
		cookbook_file "#{node['burp']['package']}" do
			path "#{node['general']['dir']}/#{node['burp']['package']}"
			owner node['general']['owner']
			group node['general']['group']
			mode node['general']['mode']
			action :create_if_missing
		end
	end
end

if node['pwntools']['enabled']
	node[:pwntools][:depends].each do |pwntools_depends|
		package pwntools_depends do
			action :install
		end
	end

	# https://pwntools.readthedocs.org/en/latest/install.html
	execute 'Installing Pwntools' do
		command "pip install #{node['pwntools']['package']}"
	end
end

if node['qemu']['enabled']
	node[:qemu][:version].each do |qemu_version|
		package qemu_version do
			action :install
		end
	end
end
