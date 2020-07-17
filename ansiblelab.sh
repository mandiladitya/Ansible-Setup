#!/bin/bash
#yum install git -y
#git clone https://github.com/sonulodha/security/edit/master/NMAP/nmaplab.sh
#run
# sh nmaplab.sh
yum install docker -y
systemctl start docker
systemctl enable docker
#default network 172.17.0.0/16
#create   docker additional network 
docker network create -d bridge --subnet=192.168.10.0/28 ansible
docker run -itd --name control --hostname c-node.example.com --network ansible mitrasonu/ansible
docker run -itd --name host-1 --hostname host2.example.com --network ansible mitrasonu/ansible
docker run -itd --name host-2 --hostname host1.example.com --network ansible mitrasonu/ansible
