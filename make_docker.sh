#!/bin/bash

# This script will make a docker image, afterwards to Run:
#   docker run -p 8888:8888 stevenacoffman/koa_kubernetes_example
# Registry -
#   A service responsible for hosting and distributing images. The default registry is the Docker Hub.
#
# Repository -
#   A collection of tags grouped under a common prefix (the name component before :).
#   For example, in an image tagged with the name my-app:3.1.4, my-app is the Repository component of the name.
#   A repository name is made up of slash-separated name components, optionally prefixed by the service's DNS hostname.
#   The hostname must follow comply with standard DNS rules, but may not contain _ characters.
#   If a hostname is present, it may optionally be followed by a port number in the format :8080.
#   Name components may contain lowercase characters, digits, and separators.
#   A separator is defined as a period, one or two underscores, or one or more dashes.
#   A name component may not start or end with a separator.
#
#
# Tag -
#   A tag serves to map a descriptive, user-given name to any single image ID.
#
# Image Name -
#   Informally, the name component after any prefixing hostnames and namespaces.

IMAGE_NAME=koa_kubernetes_example
REPOSITORY_NAMESPACE=${1:-stevenacoffman}
# default REGISTRY is "hub.docker.com"
REGISTRY="hub.docker.com"
REPOSITORY="${REGISTRY}/${REPOSITORY_NAMESPACE}/${IMAGE_NAME}"
# A docker tag name must be valid ASCII and may contain lowercase and uppercase letters,
# digits, underscores, periods and dashes.
# A docker tag name may not start with a period or a dash and may contain a maximum of 128 characters.
GIT_REPO="$(basename "$(git config --get remote.origin.url)" | cut -f 1 -d '.')"
GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD | sed 's/[^\w.-]+//g')
GIT_REVISION=$(git rev-parse HEAD)
BUILD_TIME=$(date +'%s')

DIRECTORY="."

#Check if git status is clean
git diff-index --quiet HEAD --

ret_code=$?
if [ $ret_code != 0 ]; then
  docker build .
  printf "You have uncommitted code. Local docker image was built, but please commit before tagging and pushing. "
  exit $ret_code
else
    # See https://stackoverflow.com/questions/31647843/labelling-images-in-docker

    docker build \
        -t "${REPOSITORY}:${GIT_REVISION}" \
        -t "${REPOSITORY}:latest" \
        -t "${REPOSITORY}:${GIT_BRANCH}" \
        --build-arg "GIT_REPO=${GIT_REPO}" \
        --build-arg "GIT_BRANCH=${GIT_BRANCH}" \
        --build-arg "BUILD_TIME=${BUILD_TIME}" \
        --build-arg "GIT_COMMIT=${GIT_REVISION}" \
        "${DIRECTORY}"

    #docker push ${REPOSITORY}
fi
