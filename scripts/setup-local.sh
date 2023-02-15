#!/bin/sh

MINIKUBE_UP=$(minikube status | grep -w "host: Running")

if [ ! "$MINIKUBE_UP"  ]
then
    minikube start --memory=6500 --cpus=3
fi

minikube start

eval $(minikube -p minikube docker-env)

docker build . -t aseerkt/k8-express

kubectl apply -f k8/mongo.secret.yaml
kubectl apply -f k8/mongo.configmap.yaml

kubectl apply -f k8/mongo.yaml
kubectl apply -f k8/express-app.yaml

echo "Waiting for deployment/services to execute..."
sleep 15

minikube service express-app-service