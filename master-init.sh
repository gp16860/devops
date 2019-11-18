#!/bin/bash
 
kubeadm init --kubernetes-version=1.14.0 --apiserver-advertise-address=192.168.2.14 --pod-network-cidr=10.244.0.0/16

#执行输出 kubeadm join 请拷贝

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/


docker pull calico/cni:v3.9.3
docker pull calico/pod2daemon-flexvol:v3.9.3
docker pull calico/node:v3.9.3
docker pull calico/kube-controllers:v3.9.3

kubectl apply -f https://docs.projectcalico.org/v3.9/manifests/calico.yaml

kubectl get nodes -w
