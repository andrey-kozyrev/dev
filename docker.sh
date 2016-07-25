#!/bin/bash

DOCKER_VER=experimental #test
curl -fsSL https://$DOCKER_VER.docker.com/ | sh
sudo usermod -aG docker ak
