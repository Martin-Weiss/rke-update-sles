#!/bin/bash
kubectl label node skip-rke-update-sles=true --all
kubectl label node rke-test-master-01 skip-rke-update-sles-
# to run all execute:
#kubectl label node skip-rke-update-sles- --all

