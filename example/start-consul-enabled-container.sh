#!/bin/bash

echo "Starting mimimesos..."
minimesos up

echo "Registering zookeeper service..."
curl -XPUT -d @zk.json http://192.168.1.102:8500/v1/catalog/register

echo "Starting Consul enabled Docker container..."
echo "Try to ping zookeeper.service.consul"

IP=$(ip addr show eth0 | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)
docker run -dns=$IP -it ubuntu

