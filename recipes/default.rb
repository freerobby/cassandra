#
# Cookbook Name:: cassandra
# Recipe:: cassandra
# Author:: Robby Grossman <robby@freerobby.com>
#

include_recipe "apt"
include_recipe "java"

apt_repository "cassandra" do
  uri "http://www.apache.org/dist/cassandra/debian"
  distribution "#{node[:cassandra][:major_version]}#{node[:cassandra][:minor_version]}x"
  components ["main"]
  keyserver "pgp.mit.edu"
  key "F758CE318D77295D 2B5C1B00" # adv command (used when supplying key and keyserver) allows multiple keys
  action :add
end

package "cassandra" do
  # Versioning handled by apt_respository "cassandra"
  provider Chef::Provider::Package::Apt
  action :install
end