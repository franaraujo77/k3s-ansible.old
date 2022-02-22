#!/bin/bash

echo "Setting up storage management"

kubectl apply -f storage/longhorn.yml 

echo "Finished storage management setup"