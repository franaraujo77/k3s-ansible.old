#!/bin/bash

echo "Removing ELK logs management"

kubectl delete -f log-management/elasticsearch.yml \
                -f log-management/logstash.yml \
                -f log-management/kibana.yml  \
                -f log-management/metricbeat.yml  \
                -f log-management/filebeat.yml 
                -f log-management/kube-state-metrics.yml \
                -f log-management/curator.yml 

echo "Removed ELK logs management"