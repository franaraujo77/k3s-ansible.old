#!/bin/bash

echo "Setting up dns"

kubectl apply -f dns/dns.yml 

echo "Finished dns setup"