#!/bin/bash

clusterInfo=`echo ${CLUSTER_INFO} | sed 's/|/ /g'`
/opt/redis-trib.rb create --replicas 1 $clusterInfo
