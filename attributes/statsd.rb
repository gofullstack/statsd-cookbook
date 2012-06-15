default['statsd']['version'] = '0.3.0'
default['statsd']['deb_package_version'] = '0.0.3'
if node['cloud'] && node['cloud']['local_ipv4']
  default[:statsd][:address] = node['cloud']['local_ipv4']
  default[:statsd][:mgmt_address] = node['cloud']['local_ipv4']
else
  default[:statsd][:address] = node['ipaddress']
  default[:statsd][:mgmt_address] = node['ipaddress']
end
default[:statsd][:port] = 8125
default[:statsd][:mgmt_port] = 8126
default[:statsd][:graphite_port] = 2003
default[:statsd][:graphite_host] = "localhost"
