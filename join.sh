#!/bin/sh

docker exec consul_node-a_1 /bin/consul join consul_node-b_1 consul_node-c_1
docker exec consul_agent_1 /bin/consul join consul_node-a_1