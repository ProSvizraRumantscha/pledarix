#!/bin/sh

# wait for Elasticsearch to start, then run the setup script to
# create and configure the index.
exec /usr/share/elasticsearch/init/wait-for-it.sh localhost:9200 -s -t 0 -- /usr/share/elasticsearch/init/initPledarix.sh &
exec $@ 
