#!/bin/sh

MINIKUBE_UP=$(minikube status | grep -w "host: Running")


if [ ! "$MINIKUBE_UP"  ]
then
    minikube start --memory=6500 --cpus=3
fi

minikube image build . -t aseerkt/k8-express

helm dep update helm/mongo-express

EXISTING_RELEASE=$(helm ls | grep -w mongo-express)

if [ ! -z "$EXISTING_RELEASE" ]
then
    echo "Deleting existing 'mongo-express' release..."
    helm uninstall mongo-express
fi

helm install mongo-express helm/mongo-express

echo "Waiting for deployment/services to execute..."
sleep 10

minikube service mongo-express 8500:8500