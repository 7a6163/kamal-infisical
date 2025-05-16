FROM ghcr.io/basecamp/kamal:v2.6.1

# Install additional dependencies and Infisical CLI
RUN apk add --no-cache bash curl \
    && curl -1sLf 'https://dl.cloudsmith.io/public/infisical/infisical-cli/setup.alpine.sh' | bash \
    && apk add infisical=0.41.2
