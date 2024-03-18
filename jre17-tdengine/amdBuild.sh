#!/bin/bash
VERSION=1.3
docker build -f Dockerfile --platform linux/amd64 -t openjre17-tdengine:${VERSION} .
docker tag openjre17-tdengine:${VERSION} 88277648/openjre17-tdengine:${VERSION}
docker push 88277648/openjre17-tdengine:${VERSION}
