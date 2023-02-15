helm uninstall mongo-express

# Remove docker image
docker rmi aseerkt/k8-express

# Remove dangling docker images
docker rmi $(docker images -f dangling=true -q)

# Unset minikube docker environment
eval $(minikube -p minikube docker-env --unset)

# Stop minikube
minikube stop