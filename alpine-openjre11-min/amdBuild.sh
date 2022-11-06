#!/bin/bash
docker build -f Dockerfile --platform linux/amd64 -t openjre11-min:1.1 .
docker tag openjre11-min:1.1 88277648/openjre11-min:1.1
docker push 88277648/openjre11-min:1.1
