# how to update

0. Stage new patches / change assigned channels via SUSE Manager
1. kubectl apply -f system-upgrade-controller.yaml
2. wait until CRD is available
3. kubectl apply -f rke-update-sles.yaml

--> next update - change the version in rke-update-sles.yaml
