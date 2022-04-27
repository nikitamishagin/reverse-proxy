#!/bin/bash
docker build -t nikitamishagin/nginxproxy:latest ./proxy/Dockerfile
docker stack deploy --compose-file ./docker-compose.yml reverse-proxy
