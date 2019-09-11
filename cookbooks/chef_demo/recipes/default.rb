#
# Cookbook:: chef_demo
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'epel-release'

include_recipe 'chef_demo::nginx'
