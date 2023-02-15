# Kubernetes Mongo Express

## Pre requisites

- Docker
- kubectl
- minikube
- Node.js
- pnpm
- helm

## Getting started

### Run Kubernets

- Run

```bash
source ./scripts/k8-start.sh
# OR
pnpm start:k8
```

- Destory the running services/deployments

```bash
source ./scripts/k8-stop.sh
# OR
pnpm stop:k8
```

### Run Helm Kubernetes

- Run

```bash
source ./scripts/helm-start.sh
# OR
pnpm start:helm

```

- Destory the running helm chart

```bash
source ./scripts/helm-stop.sh
# OR
pnpm stop:helm
```
