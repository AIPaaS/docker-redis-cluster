#!/bin/bash

/opt/redis-trib.rb create --replicas 1 ${CLUSTER_INFO}
