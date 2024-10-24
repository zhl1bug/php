#!/bin/bash

docker stop php56
docker rm php56
docker run --name  php56 -v /www/hxwx/:/var/www -v /www/yaconf/:/var/www/yaconf/ -p 172.17.0.1:9056:9000 -d -it registry.cn-hangzhou.aliyuncs.com/1bug/php56:1.0.0
docker update --restart=always php56