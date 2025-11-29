#!/bin/bash
IMAGE='ceph'
VERSION=${1:-'v1.18.7'}
REGISTRY='registry.dev.niuchart.com/library'
echo 正在构建镜像 ${IMAGE}:${VERSION}

./buildPlatform.sh ${IMAGE} 'amd64' ${VERSION} ${REGISTRY}
#./buildPlatform.sh ${IMAGE} 'arm64' ${VERSION} ${REGISTRY}

echo 正在混合平台镜像 [${REGISTRY}/${IMAGE}:amd64-${VERSION}] 与 [${REGISTRY}/${IMAGE}:arm64-${VERSION}]
docker manifest create --amend ${REGISTRY}/${IMAGE}:${VERSION} ${REGISTRY}/${IMAGE}:amd64-${VERSION} \
#${REGISTRY}/${IMAGE}:arm64-${VERSION}

docker manifest inspect ${REGISTRY}/${IMAGE}:${VERSION}
echo 正在推送混合平台镜像 ${REGISTRY}/${IMAGE}:${VERSION}
docker manifest push ${REGISTRY}/${IMAGE}:${VERSION}
