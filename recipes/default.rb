#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# chef-repo\cookbooks\apache\recipes\default.rb

# install apache
package "httpd" do
	action :install
end

# start the apache service
# make sure the service starts on reboot
service "httpd" do
	action [:start, :enable]
end
# write our home page
cookbook_file "/var/www/html/index.html" do
	source "index.html"
	mode "0644"
end


