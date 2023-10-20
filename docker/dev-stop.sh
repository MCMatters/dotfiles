#!/usr/bin/env bash

# Stop traefik
cd ~/.dotfiles/docker/traefik && docker compose stop && cd - > /dev/null

# Stop MySQL 5.7
cd ~/dotfiles/docker/mysql57 && docker compose stop && cd - > /dev/null

# Stop MySQL 8.0
cd ~/dotfiles/docker/mysql80 && docker compose stop && cd - > /dev/null
