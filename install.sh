#!/bin/bash
docker build -t nikitamishagin/nginxproxy:latest ./proxy/.
docker build -t nikitamishagin/acme-companion:latest ./acme/.
docker stack deploy --compose-file ./docker-compose.yml reverse-proxy
