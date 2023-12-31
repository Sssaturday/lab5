#!/bin/bash
microk8s kubectl create ns jenkins
microk8s kubectl apply -f ./manifests
microk8s kubectl create configmap jenkins-config --from-file=./config/jenkins.yaml --from-file=./config/plugins.txt --namespace jenkins