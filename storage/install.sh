#!/bin/bash

echo "Setting up storage management"

kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/master/deploy/longhorn.yaml

echo "Type password"
read -s PASSWORD

USER=admin; echo "${USER}:$(openssl passwd -stdin -apr1 <<< ${PASSWORD})" >> auth

kubectl -n longhorn-system create secret generic basic-auth --from-file=auth

kubectl apply -f storage/longhorn.yml 

rm auth

echo "Finished storage management setup"