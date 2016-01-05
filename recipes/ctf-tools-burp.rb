#
# Cookbook Name:: CTF-Cookbook
# Recipe:: ctf-tools-burp
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

cookbook_file "#{node['burp']['package']}" do
	path "#{node['general']['dir']}/#{node['burp']['package']}"
	owner node['general']['owner']
	group node['general']['group']
	mode node['general']['mode']
	action :create_if_missing
end
