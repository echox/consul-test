#!/bin/sh

curl https://releases.hashicorp.com/consul/0.6.3/consul_0.6.3_linux_amd64.zip -o consul.zip && unzip consul.zip
rm consul.zip
