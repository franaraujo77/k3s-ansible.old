#!/bin/bash

echo "Setting up dashboard"

kubectl apply -f dashboard/dashboard.yml 

echo "Finished dashboard setup"