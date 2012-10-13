#
# Cookbook Name:: hazelcast
# Recipe:: default
#
# Copyright 2012, Moratilla.com
#
# All rights reserved - Do Not Redistribute
#
hazelcast_url = "http://www.hazelcast.com/files/hazelcast-#{node['hazelcast']['version']}.zip"
hazelcast_basedir = node['hazelcast']['base_dir']
hazelcast_currentdir = node['hazelcast']['current_dir']
hazelcast_user = node['hazelcast']['user']

include_recipe 'java::openjdk'

user hazelcast_user do
  system true
  shell "/bin/false"
  home hazelcast_basedir
end

ark 'hazelcast' do
  url hazelcast_url
  version node['hazelcast']['version']
  path hazelcast_basedir
  #home_dir hazelcast_currentdir
  append_env_path true
  owner hazelcast_user
  action :put
end

template "#{hazelcast_currentdir}/bin/hazelcast.xml" do
  source "hazelcast.xml.erb"
  mode "0755"
  owner hazelcast_user
  group hazelcast_user
  notifies :reload, 'service[hazelcast]', :immediately
end

template "/etc/init/hazelcast.conf" do
  source "hazelcast.conf.erb"
  mode "0755"
  owner "root"
  group "root"
  notifies :reload, 'service[hazelcast]', :immediately
end

service 'hazelcast' do
  supports :status => true, :restart => true, :reload => true
  action :start
end