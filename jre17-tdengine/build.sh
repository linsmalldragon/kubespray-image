#!/bin/bash
./amdBuild.sh
./armBuild.sh
VERSION=1.3
docker manifest create --amend 88277648/openjre17-tdengine:v${VERSION} \
88277648/openjre17-tdengine:${VERSION} \
88277648/openjre17-tdengine:arm-${VERSION}

docker manifest inspect  88277648/openjre17-tdengine:v${VERSION}
docker manifest push 88277648/openjre17-tdengine:v${VERSION}
