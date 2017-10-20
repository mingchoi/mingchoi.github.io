---
layout: post
title: Setup mysql and phpmyadmin on docker
---

##Setup MySQL

```
sudo docker run --name mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:latest
```
or

install by [Portainer](https://portainer.io/install.html)


##Setup phpmyadmin

```
sudo docker run --name phpmyadmin -d --link mysql:db -p 8000:80 phpmyadmin/phpmyadmin
```
