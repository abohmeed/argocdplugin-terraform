# Use the latest Alpine image as the base
FROM alpine:latest

# Install base packages
RUN apk add --no-cache \
    curl \
    jq \
    bash \
    coreutils

# Install the latest kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl