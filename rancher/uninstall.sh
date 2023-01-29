#!/bin/bash

helm uninstall rancher rancher-latest/rancher \
  --namespace cattle-system
kubectl delete namespace cattle-system

helm repo remove rancher-latest
helm repo update