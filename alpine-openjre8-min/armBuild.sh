#!/bin/bash
docker build -f armDockerfile --platform linux/arm64 -t alpine-openjre8-min:arm-1.0 .
docker tag alpine-openjre8-min:arm-1.0 88277648/alpine-openjre8-min:arm-1.0
docker push 88277648/alpine-openjre8-min:arm-1.0
