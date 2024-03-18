#!/bin/bash
VERSION=1.3
docker build -f armDockerfile --platform linux/arm64 -t openjre17-tdengine:arm-${VERSION} .
docker tag openjre17-tdengine:arm-${VERSION} 88277648/openjre17-tdengine:arm-${VERSION}
docker push 88277648/openjre17-tdengine:arm-${VERSION}
