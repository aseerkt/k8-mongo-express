minikube start

eval $(minikube docker-env)

docker build . -t aseerkt/k8-express

kubectl apply -f config/k8/mongo.secret.yaml
kubectl apply -f config/k8/mongo.configmap.yaml

kubectl apply -f config/k8/mongo.yaml
kubectl apply -f config/k8/express-app.yaml

minikube service express-app-service