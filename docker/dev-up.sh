#!/usr/bin/env bash

# Create networks.
docker network create --driver=bridge --attachable --internal=false mysql >> /dev/null 2>&1
docker network create --driver=bridge --attachable --internal=false traefik >> /dev/null 2>&1
docker network create --driver=bridge --attachable --internal=false mongodb >> /dev/null 2>&1
docker network create --driver=bridge --attachable --internal=false elasticsearch >> /dev/null 2>&1
docker network create --driver=bridge --attachable --internal=false rabbitmq >> /dev/null 2>&1
docker network create --driver=bridge --attachable --internal=false postgres >> /dev/null 2>&1

# Create shared volumes.
docker volume create --name=shared_composer_cache >> /dev/null 2>&1
docker volume create --name=shared_yarn_cache >> /dev/null 2>&1

# Run services.
cd "$HOME/.dotfiles/docker/traefik" && docker compose up -d && cd - > /dev/null
cd "$HOME/.dotfiles/docker/mysql/5.7" && docker compose up -d && cd - > /dev/null
cd "$HOME/.dotfiles/docker/mysql/8.0" && docker compose up -d && cd - > /dev/null
