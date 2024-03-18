#!/bin/bash
docker build -f Dockerfile --platform linux/amd64 -t openjre17-min:1.1 .
docker tag openjre17-min:1.1 88277648/openjre17-min:1.1
docker push 88277648/openjre17-min:1.1
