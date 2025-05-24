ARG KAMAL_VERSION=v2.6.1

FROM ghcr.io/basecamp/kamal:${KAMAL_VERSION}

ARG INFISICAL_VERSION=0.41.4

# Install additional dependencies and Infisical CLI
RUN apk add --no-cache bash curl \
    && curl -1sLf 'https://dl.cloudsmith.io/public/infisical/infisical-cli/setup.alpine.sh' | bash \
    && apk add "infisical=${INFISICAL_VERSION}"
