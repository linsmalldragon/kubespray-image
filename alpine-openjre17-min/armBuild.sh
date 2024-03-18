#!/bin/bash
docker build -f armDockerfile --platform linux/arm64 -t openjre17-min:arm-1.1 .
docker tag openjre17-min:arm-1.1 88277648/openjre17-min:arm-1.1
docker push 88277648/openjre17-min:arm-1.1
