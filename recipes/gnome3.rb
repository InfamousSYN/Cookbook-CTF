#
# Cookbook Name:: CTF-Cookbook
# Recipe:: gnome3
#
# Copyright 2015, InfamousSYN
#
# All rights reserved - Do Not Redistribute
#

execute "Performing an apt-get update" do
 command "apt-get update"
# ignore_failure true
end

node[:gnome][:packages].each do |gnome_package|
# execute "Installing #{gnome_package}" do
#  command "sudo apt-get install -y -q -f #{gnome_package}"
 package "#{gnome_package}" do
  action :install
 end
end

# execute "Add Staging Repository" do
#  command "add-apt-repository ppa:gnome3-team/gnome3-staging; add-apt-repository ppa:gnom$
# end

# execute "Performing an apt-get dist-upgrade" do
#  command "apt-get -y -q dist-upgrade"
#  ignore_failure true
# end

# execute "Installing additional GNOME packages" do
#  command "apt-get -y -qq install bijiben polari gnome-clocks gnome-weather gnome-maps gn$
#  ignore_failure true
# end

#execute "Installing Minimal Gnome Core Desktop" do
# command "apt-get -f -y -q install xorg gnome-core gnome-system-tools gnome-app-install"
#end

# http://www.webupd8.org/2014/05/how-to-install-gnome-312-in-ubuntu.html
# http://itsfoss.com/how-to-install-gnome-in-ubuntu-14-04/
# http://www.htpcbeginner.com/install-gui-on-ubuntu-server-14-04-gnome/
# http://serverfault.com/questions/482143/chef-opscode-apt-cookbook-apt-get-install-returned-100-expected-0
