# Kubernetes Mongo Express

### Pre requisites

- docker
- kubectl
- minikube

### Getting started

- Start minikube

```bash
minikube start
```

- Setup minikube docker environment

```bash
eval $(minikube -p minikube docker-env)
```

- Create docker image

```bash
docker build . -t aseerkt/k8-express
```

- Setup MongoDB secret and config map

```bash
kubectl apply -f config/k8/mongo.secret.yaml
kubectl apply -f config/k8/mongo.configmap.yaml
```

- Run MongoDB deployment and service

```bash
kubectl apply -f config/k8/mongo.yaml
```

- Run express app deployment and service

```bash
kubectl apply -f config/k8/express-app.yaml
```

- Expose application

```bash
minikube service express-app-service
```

- All in one go

```bash
source ./scripts/setup-local.sh
```

or

```bash
pnpm start:k8
```

- Destory the running services/deployments

```bash
source ./scripts/stop-local.sh
```

or

```bash
pnpm stop:k8
```
