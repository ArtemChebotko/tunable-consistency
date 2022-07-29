#!/usr/bin/env bash

echo -n 'Waiting for Cassandra to start...'
timeout 60 bash -c 'until cqlsh localhost 9042 -e "describe cluster" >/dev/null 2>&1; do sleep 1; echo -n "."; done'
timeout 60 bash -c 'until cqlsh localhost 9043 -e "describe cluster" >/dev/null 2>&1; do sleep 1; echo -n "."; done'
echo ' Ready!'

sleep 5

#docker exec -i -t Cassandra-1 bash -c 'nodetool status'
