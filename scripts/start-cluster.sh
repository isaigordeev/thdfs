#!/bin/bash
set -e

echo "Lauch Hadoop cluster..."

kubectl create configmap hadoop-config --from-file=../configs/core-site.xml
kubectl apply -f ../k8s/namenode-pvc.yaml
kubectl apply -f ../k8s/namenode-service.yaml
kubectl apply -f ../k8s/namenode-deploy.yaml
kubectl apply -f ../k8s/datanode-service.yaml
kubectl apply -f ../k8s/datanode-statefulset.yaml

echo "Cluster is launched."
