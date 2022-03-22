#!/bin/bash

release=$(git describe --abbrev=0 --tags)

docker buildx build --push --no-cache \
       --build-arg RELEASE="${release}" -t "gcr.io/platform-services-297419/minio:${release}" \
       --platform=linux/amd64 -f Dockerfile.release .

