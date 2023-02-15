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
source ./scripts/setup-local.sh
# OR
pnpm start:k8
```

- Destory the running services/deployments

```bash
source ./scripts/stop-local.sh
# OR
pnpm stop:k8
```

### Run Helm Kubernetes

```bash
source ./scripts/start-helm.sh
# OR
pnpm start:helm

```

- Destory the running helm chart

```bash
source ./scripts/stop-helm.sh
# OR
pnpm stop:helm
```
