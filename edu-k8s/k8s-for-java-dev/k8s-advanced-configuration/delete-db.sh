#!/bin/bash

echo 'clean-up -- started'
kubectl delete -n k8s-java-dev  statefulset.apps/songs-service-db-postgres
kubectl delete pvc -n k8s-java-dev songs-db-postgresdata-songs-service-db-postgres-0
kubectl delete -n k8s-java-dev  statefulset.apps/resources-service-db-postgres
kubectl delete pvc -n k8s-java-dev resources-db-postgresdata-resources-service-db-postgres-0
kubectl delete pv java-dev-pv-01
kubectl delete pv java-dev-pv-02
echo 'before cleanup: minikube ssh 'ls -la /data/''
minikube ssh 'ls -la /data/'
echo 'minikube: delete pv content '
minikube ssh 'sudo rm -r /data/java-dev-pv-01/'
minikube ssh 'sudo rm -r /data/java-dev-pv-02/'
echo 'after cleanup: minikube ssh 'ls -la /data/''
minikube ssh 'ls -la /data/'
echo 'cleanup -- finished'
