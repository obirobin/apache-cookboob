#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#install apache
package "apache2" do
	action :install
end

#start the service

#make sure that it starts at reboot
service "apache2" do
	action [:start, :enable]
end

#write homepage
cookbook_file "/var/www/index.html" do
	source "index.html"
	mode "0644"
end