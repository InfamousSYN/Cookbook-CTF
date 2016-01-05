#
# Cookbook Name:: CTF-Cookbook
# Recipe:: ctf-tools-qemu
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

cookbook_file "#{node['qemu']['kernel']['arm']}" do
	path "#{node['general']['dir']}/#{node['qemu']['kernel']['arm']}"
	owner node['general']['owner']
	group node['general']['group']
	mode node['general']['mode']
	action :create_if_missing
end

node[:qemu][:version].each do |qemu_version|
	package qemu_version do
		action :install
	end
end