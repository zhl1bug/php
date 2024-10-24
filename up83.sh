#!/bin/bash

docker stop php83
docker rm php83
docker run --name  php83 -v /www/hxwx/:/var/www -v /www/yaconf/:/var/www/yaconf/ -p 172.17.0.1:9083:9000 -d -it registry.cn-hangzhou.aliyuncs.com/1bug/php83:1.0.0
docker update --restart=always php83