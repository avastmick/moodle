#!/bin/bash



###########################################################
#
# This script sets up the VPS host to install a containerized
#   instance of Moodle
#
# - Pre-requisites:
# 1. Installed Git
#
# - This script runs the following:
# 1. Install Docker
# 2. Install docker-compose
# 3. Setup email server
# 4. Setup image persistence
# 5. Install Moodle images via docker-compose
#
###########################################################

# 0. Update repositories and packages
sudo apt-get update -y

# 1. Install Docker
command -v docker >/dev/null && { echo docker installed;  } || { echo "docker not found, installing."; sudo curl -sSL https://get.docker.com/ | sh; sudo chkconfig docker on; sudo service docker start;};

# 2. Check that docker-compose runs
command -v docker-compose >/dev/null && { echo docker-compose installed;  } || { echo "docker-compose not found, installing.";};

# 3. Setup email

# 4. Setup image persistence

# 5. Install Moodle