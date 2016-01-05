#
# Cookbook Name:: CTF-Cookbook
# Recipe:: ctf-tools-radare2
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

# Installs required dependencies and setup IDA Demo.
node[:radare2][:depends].each do|radare2_depends|
	package radare2_depends do
		action :install
	end
end

package node[:radare2][:package] do
	action :install
end
