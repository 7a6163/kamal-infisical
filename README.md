# Kamal with Infisical Integration

This project provides a Docker image that combines [Kamal](https://github.com/basecamp/kamal) (a deployment tool) with [Infisical CLI](https://infisical.com/) for secure secrets management.

## Overview

This Docker image is built on top of the official Kamal image and adds the Infisical CLI tool, allowing you to securely manage and deploy your applications with secrets management capabilities.

## Features

- Based on Kamal v2.7.0
- Includes Infisical CLI v0.41.85
- Additional utilities: bash, curl

## Prerequisites

- Docker
- Access to Infisical (account and API keys)

## Usage

1. Build the Docker image:
```bash
docker build -t kamal-infisical .
```

2. Run the container with your Infisical credentials:
```bash
docker run -it --rm \
  -e INFISICAL_TOKEN=your_token \
  kamal-infisical
```

## Configuration

The image comes with the following components pre-installed:
- Kamal v2.7.0
- Infisical CLI v0.41.85
- Bash shell
- curl

## Security

Make sure to properly secure your Infisical tokens and credentials. Never commit sensitive information to version control.

## License

This project is open source and available under the MIT License.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
