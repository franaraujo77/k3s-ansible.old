#!/bin/bash

echo "Removing storage management"

kubectl delete -f https://raw.githubusercontent.com/longhorn/longhorn/master/deploy/longhorn.yaml

kubectl delete -f storage/longhorn.yml 

echo "Removed storage management"