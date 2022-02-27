#!/bin/bash

echo "Setting up ELK logs management"

kubectl apply -f log-management/elasticsearch.yml

sleep 60

kubectl apply -f log-management/kibana.yml  \
                -f log-management/metricbeat.yml  \
                -f log-management/heartbeat.yml  \
                -f log-management/filebeat.yml \
                -f log-management/kube-state-metrics.yml  \
                -f log-management/curator.yml 

sleep 180

kubectl apply -f log-management/logstash.yml 

echo "Finished ELK logs management setup"