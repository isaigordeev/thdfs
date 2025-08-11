#!/bin/bash
set -e

echo "Stopping Hadoop cluster..."

kubectl delete -f ../k8s/datanode-statefulset.yaml
kubectl delete -f ../k8s/datanode-service.yaml
kubectl delete -f ../k8s/namenode-deploy.yaml
kubectl delete -f ../k8s/namenode-service.yaml
kubectl delete -f ../k8s/namenode-pvc.yaml

echo "Cluster is stopped."
