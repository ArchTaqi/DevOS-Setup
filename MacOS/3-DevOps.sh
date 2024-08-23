#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

## Docker

## Terraform 
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew install terragrunt
brew install terraformer
brew install terrascan

## Security
#### Scanner for vulnerabilities in container images, file systems, and Git repositories, as well as for configuration issues https://github.com/aquasecurity/trivy
brew install aquasecurity/trivy/trivy

# K8s
brew install kubectl
# curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.23.6/bin/darwin/amd64/kubectl
# chmod +x ./kubectl
# sudo mv ./kubectl /usr/local/bin/kubectl
brew install hyperkit
brew install minikube
brew install kustomize
