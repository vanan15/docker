#!/bin/bash
apt-get update -yqq
apt-get install software-properties-common -y
apt-add-repository ppa:ansible/ansible -y
apt-get update -yqq
apt-get install ansible -y


