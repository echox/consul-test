Consul-Test
===========

This is a docker-compose project to start 3 consul servers and 1 agent for testing purposes.

Dependencies and Build
----------------------
In order to build the docker containers a consul binary is required.
The `download.sh` script will get version 0.6.3 and unzip it.

The `Dockerfile` is based on Alpine-Linux and will result in an image size about ~ 25MB.

`docker-compose` will build the project before startup.

The `docker-compose.yml` file is written in Version 2, so at least docker-compose 1.6 is required.

Start
-----
Just run `docker-compose -p consul up`.

`-p consul` is required to determine the name of the containers for cluster joining.

Joining the cluster
-------------------
Bootstrap the cluster by joining the servers can be done via issuing `consul join <server b> <servcer c>`.
The script join contains the following commands and should be run after `docker-compose -p consul up`:

	#!/bin/sh

	docker exec consul_node-a_1 /bin/consul join consul_node-b_1 consul_node-c_1
	docker exec consul_agent_1 /bin/consul join consul_node-a_1

Portmappings
------------
See `docker-compose.yml` for the complete portmappings.

As a start here is the HTTP-API:

- Server A: 8500
- Server B: 8501
- Server C: 8502
- Agent: 8503

Registering a Service
---------------------
`register.sh` contains a short example on howto register a service at the agent.
You have to edit it and replace the ip with the one of your `docker-machine env`.

Afterwards you can check the catalog for example by visiting `http://<docker-host>:8500/v1/catalog/services`
