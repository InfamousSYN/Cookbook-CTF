#
# Cookbook Name:: CTF-Cookbook
# Recipe:: libraries
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

execute 'Adding i386 architectures' do
	command 'dpkg --add-architecture i386'
end

execute 'Performing an apt-get update' do
	command 'apt-get update'
	ignore_failure true
end

node[:libraries][:i386].each do |i386_package|
	package i386_package do
		action :install
	end
end

if node[:java][:enabled]
	package "#{node['java']['package']}" do
		action :install
	end
end

