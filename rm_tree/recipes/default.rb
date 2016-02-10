#
# Cookbook Name:: rm_tree
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'tree' do
	action :remove
end

file '/etc/yum.repos.d/RHEL_6.4_Disc.repo' do
	action :delete
end
