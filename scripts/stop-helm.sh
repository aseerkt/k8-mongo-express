RELEASE=mongo-express

helm delete $RELEASE

echo "Waiting for chart deployments/services to terminate"
sleep 10

# Remove docker image
minikube image rm aseerkt/k8-express

# Stop minikube
minikube stop