#!/bin/bash
IMAGE=$1
PLATFORM=$2
VERSION=$3
REGISTRY=$4

echo 正在构建镜像 [${IMAGE}:${PLATFORM}-${VERSION}]
docker build -f ${PLATFORM}Dockerfile --platform linux/${PLATFORM} -t ${IMAGE}:${PLATFORM}-${VERSION} .

echo 正在给镜像[${IMAGE}:${PLATFORM}-${VERSION}]打标签[${REGISTRY}/${IMAGE}:${PLATFORM}-${VERSION}]
docker tag ${IMAGE}:${PLATFORM}-${VERSION} ${REGISTRY}/${IMAGE}:${PLATFORM}-${VERSION}

echo 正在上传 ${REGISTRY}/${IMAGE}:${PLATFORM}-${VERSION}
docker push ${REGISTRY}/${IMAGE}:${PLATFORM}-${VERSION}
