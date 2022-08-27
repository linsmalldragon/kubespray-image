#!/bin/bash
docker build -f Dockerfile --platform linux/amd64 -t alpine-openjre8-min:1.0 .
docker tag alpine-openjre8-min:1.0 88277648/alpine-openjre8-min:1.0
docker push 88277648/alpine-openjre8-min:1.0
