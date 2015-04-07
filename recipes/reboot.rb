#
# Cookbook Name:: CTF-Cookbook
# Recipe:: reboot
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

execute "Rebooting Instance" do
 command "reboot"
 ignore_failure true
end
