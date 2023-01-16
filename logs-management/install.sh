#!/bin/bash

echo "Setting up ELK logs management"

helm repo add elastic https://helm.elastic.co
helm repo update

helm install elastic-operator elastic/eck-operator -n logs-management --create-namespace 

kubectl apply -f logs-management/elasticsearch.yml \
                -f logs-management/kube-state-metrics.yml \
                -f logs-management/kibana.yml  \
                -f logs-management/metricbeat.yml  \
                -f logs-management/heartbeat.yml  \
                -f logs-management/filebeat.yml 

echo "Finished ELK logs management setup"