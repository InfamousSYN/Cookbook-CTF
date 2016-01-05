#
# Cookbook Name:: CTF-Cookbook
# Recipe:: libraries
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

if node['libraries']['multiarch']
	execute 'Adding architecture support to dpkg' do
		command "#{node['libraries']['arch']}"
	end

	execute 'Adding architecture support to dpkg' do
		command "#{node['libraries']['legacy_method']}"
	end

	execute 'apt-get update' do
		command 'sudo apt-get update'
		ignore_failure true
	end

	node[:libraries][:i386].each do |i386_package|
		package i386_package do
			action :install
			ignore_failure true
		end
	end
end

if node[:java][:enabled]
	package "#{node['java']['package']}" do
		action :install
		ignore_failure true
	end
end

