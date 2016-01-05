#
# Cookbook Name:: CTF-Cookbook
# Recipe:: ctf-tools-ida
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

# Installs required dependencies and setup IDA Demo.
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
