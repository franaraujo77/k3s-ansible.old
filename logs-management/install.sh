#!/bin/bash

echo "Setting up ELK logs management"

kubectl create -f https://download.elastic.co/downloads/eck/2.6.1/crds.yaml
kubectl apply -f https://download.elastic.co/downloads/eck/2.6.1/operator.yaml

kubectl apply -f logs-management/elasticsearch.yml \
                -f logs-management/kube-state-metrics.yml \
                -f logs-management/kibana.yml  \
                -f logs-management/metricbeat.yml  \
                -f logs-management/heartbeat.yml  \
                -f logs-management/filebeat.yml 

echo "Finished ELK logs management setup"