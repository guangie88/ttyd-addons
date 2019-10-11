FROM tsl0922/ttyd:latest

SHELL ["bash", "-c"]

RUN set -euo pipefail && \
    apt-get update; \
    apt-get install -y --no-install-recommends curl wget vim python3 ruby; \
    rm -rf /var/lib/apt/lists/*; \
    :
