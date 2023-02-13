# Kubernetes Mongo Express

## Pre requisites

- Docker
- kubectl
- minikube
- Node.js
- pnpm

## Getting started

- Run Kubernetes Express MongoDB application

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
