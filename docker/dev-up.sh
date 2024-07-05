#!/usr/bin/env bash

# Create networks.
docker network create --driver=bridge --attachable --internal=false mysql >> /dev/null 2>&1
docker network create --driver=bridge --attachable --internal=false traefik >> /dev/null 2>&1
docker network create --driver=bridge --attachable --internal=false mongodb >> /dev/null 2>&1

# Create shared volumes.
docker volume create --name=shared_composer_cache >> /dev/null 2>&1
docker volume create --name=shared_yarn_cache >> /dev/null 2>&1

# Run traefik
cd ~/.dotfiles/docker/traefik && docker compose up -d && cd - > /dev/null

# Run MySQL 5.7
cd ~/.dotfiles/docker/mysql57 && docker compose up -d && cd - > /dev/null

# Run MySQL 8.0
cd ~/.dotfiles/docker/mysql80 && docker compose up -d && cd - > /dev/null
