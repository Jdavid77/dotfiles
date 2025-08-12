#!/usr/bin/env bash
# -*- coding: utf-8 -*-
mkdir -p ~/.kube/backup
DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ')
echo $DATE
mv config backup/config-$DATE
# kubeconfigs separated by ":"
KUBECONFIG=<kubeconfigs-here> kubectl config view --merge --flatten >config