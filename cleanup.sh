#!/bin/bash
kubectl delete deployments -n rke-update-sles --all
kubectl delete jobs -n rke-update-sles --all
kubectl delete ns rke-update-sles
kubectl delete ClusterRoleBinding rke-update-sles
kubectl label node skip-rke-update-sles- --all
kubectl label node plan.upgrade.cattle.io/rke-update-sles- --all
kubectl uncordon -l kubernetes.io/os=linux

