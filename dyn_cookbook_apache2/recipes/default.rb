#
# Cookbook Name:: dyn_cookbook_apache2
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#pkg_name = "apache2"
#pkg_service = "apache2"
#pkg_path = "/var/www"

#if node["platform"] == "redhat"
#	pkg_name = "httpd"
#	pkg_service = "httpd"
#	pkg_path = "/var/www/html"
#end

package node["pkg_name"] do
	action :install
end

service node["pkg_service"] do
	action [:enable, :start]
end

template "#{node["pkg_path"]}/index.html" do
	source "index.html.erb"
	mode "0644"
end

package "tree"

execute node["repo_update"] #do
#	command node["repo_update"]
#end
