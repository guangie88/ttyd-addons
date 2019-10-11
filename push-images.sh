#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME=${IMAGE_NAME:-ttyd-addons}
TAG_NAME="${PACKAGE_VERSION}_${DOCKER_TAG}"

docker login -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"

docker tag "${IMAGE_NAME}:${TAG_NAME}" "${DOCKER_USERNAME}/${IMAGE_NAME}:${TAG_NAME}"
docker push "${DOCKER_USERNAME}/${IMAGE_NAME}:${TAG_NAME}"

# Alternative simpler tags
docker tag "${IMAGE_NAME}:${TAG_NAME}" "${DOCKER_USERNAME}/${IMAGE_NAME}:${DOCKER_TAG}"
docker push "${DOCKER_USERNAME}/${IMAGE_NAME}:${DOCKER_TAG}"
