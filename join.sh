#!/bin/sh

docker exec consul_node-a_1 /bin/consul join consul_node-b_1 consul_node-c_1
docker exec consul_node-d_1 /bin/consul join consul_node-e_1 consul_node-f_1
docker exec consul_node-d_1 /bin/consul join -wan consul_node-a_1 consul_node-b_1 consul_node_c_2
docker exec consul_node-e_1 /bin/consul join -wan consul_node-a_1 consul_node-b_1 consul_node_c_2
docker exec consul_node-f_1 /bin/consul join -wan consul_node-a_1 consul_node-b_1 consul_node_c_2
docker exec consul_agent-a_1 /bin/consul join consul_node-a_1
docker exec consul_agent-b_1 /bin/consul join consul_node-a_1
