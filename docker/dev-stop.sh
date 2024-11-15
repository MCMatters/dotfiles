#!/usr/bin/env bash

cd ~/.dotfiles/docker/traefik && docker compose stop && cd - > /dev/null
cd ~/dotfiles/docker/mysql/5.7 && docker compose stop && cd - > /dev/null
cd ~/dotfiles/docker/mysql/8.0 && docker compose stop && cd - > /dev/null
