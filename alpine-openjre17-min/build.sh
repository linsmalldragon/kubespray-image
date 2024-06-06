#!/bin/bash
./amdBuild.sh
./armBuild.sh
docker manifest create --amend 88277648/openjre17-min:v1.1 \
88277648/openjre17-min:1.1 \
88277648/openjre17-min:arm-1.1

docker manifest inspect  88277648/openjre17-min:v1.1
docker manifest push 88277648/openjre17-min:v1.1