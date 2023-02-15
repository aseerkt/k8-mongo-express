#!/bin/sh

# Delete deployments
kubectl delete -f k8/express-app.yarml
kubectl delete -f k8/mongo.yaml

# Delete secret and config map
kubectl delete -f k8/mongo.secret.yarml
kubectl delete -f k8/mongo.configmap.yaml

# Remove docker image
docker rmi aseerkt/k8-express

# Remove dangling docker images
docker rmi $(docker images -f dangling=true -q)

# Unset minikube docker environment
eval $(minikube -p minikube docker-env --unset)

# Stop minikube
minikube stop