#
# Cookbook Name:: simserv
# Recipe:: default
#
# Copyright (C) 2013 Skirmisher Software
# 
# MIT
#

include_recipe "simulationcraft"

include_recipe "rbenv"
include_recipe "rbenv::ruby_build"

rbenv_ruby "2.0.0-p353"

directory node[:simserv][:home] do
  recursive true
end

git node[:simserv][:home] do
  repository node[:simserv][:repository]
  reference "HEAD"
  action :sync
end
