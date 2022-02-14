#!/bin/bash
#kubectl uncordon -l kubernetes.io/os=linux
kubectl apply -f system-upgrade-controller.yaml
sleep 30
kubectl apply -f rke-update-sles.yaml
