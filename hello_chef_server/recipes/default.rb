#
# Cookbook Name:: hello_chef_server
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

file "#{Chef::Config[:file_cache_path]}/hello.txt" do
  content 'Hello, Chef server!'
end

#file '/var/chef/cache/hello.txt' do
#	content 'This is for testing workstation'
#end

template '/etc/yum.repos.d/RHEL_6.4_Disc.repo' do
	source 'RHEL_6.4_Disc.repo.erb'
end

package 'tree'
