#!/bin/bash

# Change directory to where your docker-compose.yml file is located
cd /var/lib/jenkins/workspace/devcafe-website

# Run docker-compose up command
docker-compose up --scale api=2
