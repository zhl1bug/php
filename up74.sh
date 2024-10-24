#!/bin/bash

docker stop php74
docker rm php74
docker run --name  php74 -v /www/hxwx/:/var/www -v /www/yaconf/:/var/www/yaconf/ -p 172.17.0.1:9074:9000 -d -it registry.cn-hangzhou.aliyuncs.com/1bug/php74
docker update --restart=always php74