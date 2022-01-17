#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

## Docker


## Terraform 
brew install terraform
brew install terragrunt
brew install terraformer
brew install terrascan

## Security
#### Scanner for vulnerabilities in container images, file systems, and Git repositories, as well as for configuration issues https://github.com/aquasecurity/trivy
brew install aquasecurity/trivy/trivy
