#
# Cookbook Name:: enju-env
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{ImageMagick ImageMagic-devel libjpeg-devel libpng-devel}.each do |pkg|
	package pkg do
		action :install
	end
end

include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'

rbenv_ruby "2.0.0-p451" do
	ruby_version "2.0.0-p451"
	global true
end

gem_package "bundler" do
	action :install
end
