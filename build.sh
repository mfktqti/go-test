#!/bin/bash

IMAGE="go_gp:latest"
# 编译镜像
docker build -t $IMAGE .

docker stop go_gp

docker run -d --name=go_gp --rm -p 80:80 $IMAGE

# 清理
docker rmi $IMAGE