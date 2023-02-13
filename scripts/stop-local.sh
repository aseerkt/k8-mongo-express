# Delete deployments
kubectl delete deployment express-app-deployment
kubectl delete deployment mongodb-deployment

# Delete secret and config map
kubectl delete secret mongodb-secret
kubectl delete configmap mongodb-configmap

# Remove docker image
docker rmi aseerkt/k8-express

# Unset minikube docker environment
eval $(minikube -p minikube docker-env --unset)

# Stop minikube
minikube stop