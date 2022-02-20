#!/bin/bash

echo "Removing kubernetes dashboard"

GITHUB_URL=https://github.com/kubernetes/dashboard/releases
VERSION_KUBE_DASHBOARD=$(curl -w '%{url_effective}' -I -L -s -S ${GITHUB_URL}/latest -o /dev/null | sed -e 's|.*/||')
kubectl delete -f https://raw.githubusercontent.com/kubernetes/dashboard/${VERSION_KUBE_DASHBOARD}/aio/deploy/recommended.yaml

kubectl delete -f dashboard/dashboard.admin-user-role.yml \
                -f dashboard/dashboard.admin-user.yml \
                -f dashboard/dashboard.ingress.yml \
                -f dashboard/dashboard.traefik-insecure.yml

echo "Removed kubernetes dashboard setup"