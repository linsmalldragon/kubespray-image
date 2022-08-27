#!/bin/bash
./amdBuild.sh
./armBuild.sh
docker manifest create --amend 88277648/alpine-openjre8-min:v1 \
88277648/alpine-openjre8-min:1.0 \
88277648/alpine-openjre8-min:arm-1.0

docker manifest inspect  88277648/alpine-openjre8-min:v1
docker manifest push 88277648/alpine-openjre8-min:v1
