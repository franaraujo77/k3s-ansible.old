#!/bin/bash

echo "Removing storage management"

kubectl delete -f storage/longhorn.yml 

echo "Removed storage management"