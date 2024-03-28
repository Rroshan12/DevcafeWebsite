#!/bin/bash

# Change directory to where your docker-compose.yml file is located
cd /var/lib/jenkins/workspace/devcafe-website

docker-compose up -d --build
# Run docker-compose up command
docker-compose up --scale api=2 

pm2 stop devcafe-website
pm2 delete devcafe-website
pm2 start pm2.config.js


