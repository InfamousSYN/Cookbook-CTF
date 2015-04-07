#
# Cookbook Name:: CTF-Cookbook
# Recipe:: default
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

# Include Recipes, keep everything modulised.
include_recipe 'CTF-Cookbook::libraries'
include_recipe 'CTF-Cookbook::software'
include_recipe 'CTF-Cookbook::reboot'
include_recipe 'CTF-Cookbook::setup-files'
