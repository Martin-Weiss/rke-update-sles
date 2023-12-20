#!/bin/bash
#kubectl uncordon -l kubernetes.io/os=linux
kubectl label ns rke-update-sles pod-security.kubernetes.io/enforce=permissive --overwrite
kubectl apply -f system-upgrade-controller.yaml
sleep 30
kubectl apply -f rke-update-sles.yaml
