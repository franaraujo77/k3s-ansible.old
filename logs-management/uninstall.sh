#!/bin/bash

echo "Removing ELK logs management"

kubectl delete -f logs-management/elasticsearch.yml \
                -f logs-management/kube-state-metrics.yml \
                -f logs-management/kibana.yml  \
                -f logs-management/metricbeat.yml  \
                -f logs-management/heartbeat.yml  \
                -f logs-management/filebeat.yml 

helm uninstall elastic-operator -n logs-management

helm repo remove elastic
helm repo update

echo "Removed ELK logs management"