---
layout: post
title: Setup a Development Environment
---

## 1. Install Go
`sudo apt install golang`

## 2. Install docker
[https://docs.docker.com/install/linux/docker-ce/ubuntu/](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

## 3. Install Visual Studio Code
[https://code.visualstudio.com/](https://code.visualstudio.com/)

## 4. Install VS Code Plugin
- Go
- Code Outline

## 5. Install docker management tool
[https://portainer.io/](https://portainer.io/)

## 6A. Install MySQL in docker
```
sudo docker run --name mysql -v /var/lib/mysql-files:/var/lib/mysql-files -e MYSQL_ROOT_PASSWORD=my-secret-pw -p 3306:3306 -d mysql:latest
sudo docker run --name phpmyadmin -d --link mysql:db -p 8000:80 phpmyadmin/phpmyadmin
```

## 6B. Install MariaDB in docker
```
sudo docker run --name mariadb -v /var/lib/mysql-files:/var/lib/mysql-files -e MYSQL_ROOT_PASSWORD=my-secret-pw -p 3306:3306 -d mariadb:latest
sudo docker run --name adminer -d --link mariadb:db -p 8000:8080 adminer
```
