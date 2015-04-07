#
# Cookbook Name:: CTF-Cookbook
# Recipe:: setup-files
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

# Moves checksec.sh into /tmp directory, tests for security features enabled.
# http://www.trapkit.de/tools/checksec.sh
cookbook_file "checksec.sh" do
 path "/home/vagrant/checksec.sh"
 mode 0711
 owner "vagrant"
 group "vagrant"
 action :create_if_missing
end

cookbook_file "shellcode_examiner.c" do
 path "/home/vagrant/shellcode_examiner.c"
 mode 0777
 owner "vagrant"
 group "vagrant"
 action :create_if_missing
end
