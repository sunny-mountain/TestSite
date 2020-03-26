#!/bin/bash

yum update -y
timedatectl set-timezone Asia/Tokyo
localectl set-locale LANG=ja_JP.UTF-8
source /etc/locale.conf
yum install -y wget git
curl -L https://github.com/docker/compose/releases/download/{最新バージョン}/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
