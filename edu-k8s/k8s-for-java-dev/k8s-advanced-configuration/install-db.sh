#!/bin/bash

kubectl apply -f k8s-java-dev-pv-minikube.yml
kubectl apply -f k8s-java-dev-namespace.yml
kubectl apply -f k8s-java-dev-secrets.yml
kubectl apply -f k8s-java-dev-configmap.yml
kubectl apply -f k8s-java-dev-song-database-ss.yml
kubectl apply -f k8s-java-dev-resource-database-ss.yml
kubectl get all -n k8s-java-dev
