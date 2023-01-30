#!/bin/bash

echo "Setting up dns"

kubectl delete -f dns/dns.yml 

echo "Finished dns setup"