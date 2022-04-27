#!/bin/bash
docker build -t nikitamishagin/nginxproxy:latest ./proxy/.
docker stack deploy --compose-file ./docker-compose.yml reverse-proxy
