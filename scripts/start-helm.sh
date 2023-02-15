#!/bin/sh

MINIKUBE_UP=$(minikube status | grep -w "host: Running")

RELEASE=mongo-express


if [ ! "$MINIKUBE_UP"  ]
then
    minikube start --memory=6500 --cpus=3
fi

minikube image build . -t aseerkt/k8-express

helm dep update helm/mongo-express

EXISTING_RELEASE=$(helm ls | grep -w "$RELEASE")

if [ ! -z "$EXISTING_RELEASE" ]
then
    echo "Deleting existing '$RELEASE' release..."
    helm uninstall $RELEASE
fi

helm install mongo-express helm/mongo-express

echo "Waiting for deployment/services to execute..."
sleep 15

minikube service mongo-express 8500:8500