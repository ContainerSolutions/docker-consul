#!/bin/bash

IP=$(ip addr show eth0 | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)
sudo consul agent -dev -client=$IP -bind=$IP -config-file=config.json

