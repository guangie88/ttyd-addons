ARG DOCKER_TAG=latest
FROM tsl0922/ttyd:${DOCKER_TAG}

SHELL ["bash", "-c"]

RUN set -euo pipefail && \
    apt-get update; \
    apt-get install -y --no-install-recommends curl wget vim python3 ruby; \
    rm -rf /var/lib/apt/lists/*; \
    :
