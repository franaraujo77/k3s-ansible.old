#!/bin/bash

echo "Removing dashboard"

kubectl delete -f dashboard/dashboard.yml 

echo "Removed dashboard setup"