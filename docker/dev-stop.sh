#!/usr/bin/env bash

cd "$HOME/.dotfiles/docker/traefik" && docker compose stop && cd - > /dev/null
cd "$HOME/dotfiles/docker/mysql/5.7" && docker compose stop && cd - > /dev/null
cd "$HOME/dotfiles/docker/mysql/8.0" && docker compose stop && cd - > /dev/null
