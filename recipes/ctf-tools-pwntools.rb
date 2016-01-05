#
# Cookbook Name:: CTF-Cookbook
# Recipe:: ctf-tools-pwntools
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

# Installs required dependencies and setup IDA Demo.
node[:pwntools][:depends].each do |pwntools_depends|
	package pwntools_depends do
		action :install
	end
end

# https://pwntools.readthedocs.org/en/latest/install.html
execute 'Installing Pwntools' do
	command "pip install #{node['pwntools']['package']}"
end
