#!/bin/bash

###########################################################
#
# This script sets up the VPS host to install a containerized
#   instance of Moodle
#
# Run as root (or sudo ./setup.sh)
#
# - Pre-requisites:
# 0. Ubuntu Server 16.04.3+
# 1. Installed Git
#
# - This script runs the following:
# 1. Install Docker
# 2. Install docker-compose (https://docs.docker.com/compose/install/)
# 3. Setup email server
# 4. Setup image persistence on host (included in docker-compose)
# 5. Install Moodle images via docker-compose
#
###########################################################

DOCKER-COMPOSE-VER=1.15.0

# 1. Install Docker
command -v docker >/dev/null && { echo docker installed;  } || { echo "docker not found, installing."; curl -sSL https://get.docker.com/ | sh ;};

# 2. Install docker-compose
command -v docker-compose >/dev/null && { echo docker-compose installed;  } || { echo "docker-compose not found, installing."; curl -L https://github.com/docker/compose/releases/download/$DOCKER-COMPOSE-VER/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose; chmod +x /usr/local/bin/docker-compose; };

# 3. Setup email server

# 4. Install Moodle
docker-compose up -d