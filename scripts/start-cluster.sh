#!/bin/bash
set -e

echo "Lauch Hadoop cluster..."

kubectl apply -f ../k8s/namenode-pvc.yaml
kubectl apply -f ../k8s/namenode-service.yaml
kubectl apply -f ../k8s/namenode-deployment.yaml
kubectl apply -f ../k8s/datanode-service.yaml
kubectl apply -f ../k8s/datanode-statefulset.ya

echo "Cluster is launched."
