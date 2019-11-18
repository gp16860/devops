#!/bin/bash

yum -y update

yum install -y conntrack ipvsadm ipset jq sysstat curl iptables libseccomp wget yum-utils device-mapper-persistent-data lvm2

sudo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

sudo mkdir -p /etc/docker

sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "registry-mirrors": ["这边替换成自己的实际地址"]  #需要修改
}
EOF

sudo systemctl daemon-reload

yum install -y docker-ce-18.09.0 docker-ce-cli-18.09.0 containerd.io

sudo systemctl start docker && sudo systemctl enable docker





