#
# Cookbook Name:: CTF-Cookbook
# Recipe:: software
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#


node[:software][:software].each do |software_package|
 execute "Installing #{software_package}" do
  command "apt-get -yq install #{software_package}"
 end
end
