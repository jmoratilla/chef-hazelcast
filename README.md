Description
===========
Cookbook for install hazelcast server community edition. 

URL http://www.hazelcast.com/products-community.jsp



Requirements
============

Hazelcast is a java based server, so it requires java cookbook.  Also,
it requires ark cookbook to ease download of the appropiate version of
the server.


Attributes
==========

All the configuration is done in a single XML file


# attribute list for hazelcast

default['hazelcast']['version']
default['hazelcast']['base_dir']
default['hazelcast']['current_dir']
default['hazelcast']['user']
default['hazelcast']['start_server']

# Attributes for template

default['hazelcast']['group_username']
default['hazelcast']['group_password']
default['hazelcast']['mgmt_center_enabled']
default['hazelcast']['network_port_auto_increment']
default['hazelcast']['network_multicast_enabled']
default['hazelcast']['network_multicast_group']
default['hazelcast']['network_multicast_port']
default['hazelcast']['network_tcp_ip_enabled']
default['hazelcast']['network_tcp_ip_interface']
default['hazelcast']['network_aws_enabled']
default['hazelcast']['network_aws_access_key']
default['hazelcast']['network_aws_secret_key']
default['hazelcast']['network_aws_region']
default['hazelcast']['network_aws_security_group']
default['hazelcast']['network_interfaces_enabled']
default['hazelcast']['network_interfaces_networks']
default['hazelcast']['network_ssl_enabled']
default['hazelcast']['network_socket_interceptor']
default['hazelcast']['network_ssl_sym_encryption_enabled']
default['hazelcast']['network_ssl_sym_encryption_alg']
default['hazelcast']['network_ssl_sym_encryption_salt']
default['hazelcast']['network_ssl_sym_encryption_password']
default['hazelcast']['network_ssl_sym_encryption_iteration_count']
default['hazelcast']['network_ssl_asym_encryption_enabled']
default['hazelcast']['network_ssl_asym_encryption_alg']
default['hazelcast']['network_ssl_asym_encryption_key_password']
default['hazelcast']['network_ssl_asym_encryption_key_alias']
default['hazelcast']['network_ssl_asym_encryption_store_type']
default['hazelcast']['network_ssl_asym_encryption_store_password']
default['hazelcast']['network_ssl_asym_encryption_store_path']
default['hazelcast']['partition_group_enabled']
default['hazelcast']['executor_core_pool_size']
default['hazelcast']['executor_max_pool_size']
default['hazelcast']['executor_keep_alive_seconds']
default['hazelcast']['queue_name']
default['hazelcast']['queue_max_size_per_jvm']
default['hazelcast']['queue_backing_map_ref']
default['hazelcast']['map_name']
default['hazelcast']['map_backup_count']
default['hazelcast']['map_async_backup_count']
default['hazelcast']['map_ttl_seconds']
default['hazelcast']['map_max_idle_seconds']
default['hazelcast']['map_eviction_policy']
default['hazelcast']['map_max_size_policy']
default['hazelcast']['map_eviction_percentage']
default['hazelcast']['map_merge_policy']

# TODO: check if this works

default['hazelcast']['semaphore_enabled']
default['hazelcast']['semaphore_name']
default['hazelcast']['semaphore_initial_permits']
default['hazelcast']['semaphore_factory_enabled']
default['hazelcast']['semaphore_factory_class_name']

# TODO: implement merge_policies

default['hazelcast']['merge_policies_enabled']

Usage
=====

