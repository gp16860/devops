#!/bin/bash


sudo hostnamectl set-hostname w2

#ip地址请修改
cat <<EOF >> /etc/hosts
 192.168.2.14 m
 192.168.2.16 w1
 192.168.2.17 w2 
EOF
