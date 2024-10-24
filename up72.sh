#!/bin/bash

docker stop php72
docker rm php72
docker run --name  php72 -v /www/hxwx/:/var/www -v /www/yaconf/:/var/www/yaconf/ -p 172.17.0.1:9072:9000 -d -it registry.cn-hangzhou.aliyuncs.com/1bug/php72:1.0.0
docker update --restart=always php72