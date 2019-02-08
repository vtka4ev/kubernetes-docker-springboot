#!/usr/bin/env bash

./build_app.sh                                          &&
eval $(minikube docker-env)                             &&
docker image build -t spring_boot .                     &&
kubectl create -f Kubernetes/minikube/svc.yml           &&
kubectl create -f Kubernetes/minikube/deployment.yml