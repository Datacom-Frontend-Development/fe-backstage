#!/bin/sh

DOCKER_BUILDKIT=1

docker image build . -f packages/backend/Dockerfile --tag backstage --build-arg CACHEBUST=$(date +%s)

#docker tag backstage samdevreg.azurecr.io/backstage

#docker push samdevreg.azurecr.io/backstage

