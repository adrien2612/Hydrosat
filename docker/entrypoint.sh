#!/bin/bash
set -e

echo "Starting the Docker daemon..."

dockerd &

echo "Waiting for the Docker daemon to initialize..."
sleep 10

echo "Creating k3d cluster 'hydro-cluster'..."

k3d cluster create hydro-cluster

echo "Waiting for the k3d cluster to be ready..."
sleep 20


k3d kubeconfig get hydro-cluster > ~/.kube/config

echo "Verifying the cluster with kubectl..."
kubectl cluster-info --context k3d-hydro-cluster
kubectl config use-context k3d-hydro-cluster

echo "Changing directory to infra to run Terraform..."
cd infra

echo "Initializing Terraform..."
terraform init

echo "Applying Terraform configuration to deploy MinIO..."
terraform apply -auto-approve

echo "Infrastructure deployment complete. The cluster and services should be up."
echo "Keeping the container running. Access logs or exec into the container for further commands."
tail -f /dev/null


