#!/bin/bash
apt-get update -yqq
apt-get install -y apache2 git
apt-get clean
rm -rf /var/lib/apt/lists/*
cd /var
git clone https://github.com/vanan15/testrepo.git
cd testrepo
rm -rf /var/www
ln -sf `pwd`/public /var/www
