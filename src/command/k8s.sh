#!/bin/sh

source '/busyboxk8s/src/core/load-deps.sh'

alias k8s-cluster3-staging="aws eks update-kubeconfig --region us-east-1 --name sc-cluster-linio3-staging"
alias k8s-cluster4-staging="aws eks update-kubeconfig --region us-east-1 --name sc-cluster-linio4-staging"
alias k8s-cluster3-live="aws eks update-kubeconfig --region us-east-1 --name sc-cluster-linio3-live"
alias k8s-cluster4-live="aws eks update-kubeconfig --region us-east-1 --name sc-cluster-linio4-live"
