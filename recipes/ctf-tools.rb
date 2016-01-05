#
# Cookbook Name:: CTF-Cookbook
# Recipe:: ctf-tools
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

cookbook_file 'checksec.sh' do
	path "#{node['general']['dir']}/#{node['files']['checksec']}"
	owner node['general']['owner']
	group node['general']['group']
	mode node['general']['mode']
	action :create_if_missing
end

cookbook_file 'shellcode_examiner.c' do
	path "#{node['general']['dir']}/#{node['files']['shellcode_examiner']}"
	owner node['general']['owner']
	group node['general']['group']
	mode node['general']['mode']
	action :create_if_missing
end

# Installs required dependencies and setup IDA Demo.
if node['ida']['enabled']
	include_recipe 'CTF-Cookbook::ctf-tools-ida'
end

# Installs required dependencies and setup Hopper Debugger.
if node['hopper']['enabled']
	include_recipe 'apt::default'
	include_recipe 'CTF-Cookbook::ctf-tools-hopper'
end

# Installs the rardare2 tool
if node['radare2']['enabled']
	include_recipe 'CTF-Cookbook::ctf-tools-radare2'
end

if node['pwntools']['enabled']
	include_recipe 'CTF-Cookbook::ctf-tools-pwntools'
end

if node['qemu']['enabled']
	include_recipe 'CTF-Cookbook::ctf-tools-qemu'
end

# Creates the Burp .jar file.
if node['java']['enabled']
	if node['burp']['enabled']
		include_recipe 'CTF-Cookbook::ctf-tools-burp'
	end
end

