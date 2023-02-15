RELEASE=mongo-express

helm uninstall $RELEASE

# Remove docker image
minikube image rm aseerkt/k8-express

# Stop minikube
minikube stop