#!/bin/bash

echo "Removing ELK logs management"

kubectl delete -f logs-management/elasticsearch.yml \
                -f logs-management/kube-state-metrics.yml \
                -f logs-management/kibana.yml  \
                -f logs-management/metricbeat.yml  \
                -f logs-management/heartbeat.yml  \
                -f logs-management/filebeat.yml 

kubectl delete -f https://download.elastic.co/downloads/eck/2.6.1/operator.yaml
kubectl delete -f https://download.elastic.co/downloads/eck/2.6.1/crds.yaml

echo "Removed ELK logs management"