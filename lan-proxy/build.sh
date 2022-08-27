#!/bin/bash
docker build -f Dockerfile -t nx-lan-proxy:1.0 .
docker tag nx-lan-proxy:1.0 registry.cn-hangzhou.aliyuncs.com/smallpigeon/nx-lan-proxy:1.0
docker push registry.cn-hangzhou.aliyuncs.com/smallpigeon/nx-lan-proxy:1.0