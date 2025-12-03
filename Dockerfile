ARG KAMAL_VERSION=v2.9.0

FROM ghcr.io/basecamp/kamal:${KAMAL_VERSION}

ARG INFISICAL_VERSION=0.43.35

# Install additional dependencies and Infisical CLI
RUN apk add --no-cache bash curl \
    && curl -1sLf 'https://dl.cloudsmith.io/public/infisical/infisical-cli/setup.alpine.sh' | distro=alpine version=3.21.0 bash \
    && apk add "infisical=${INFISICAL_VERSION}"
