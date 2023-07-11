#!/bin/bash

# Stop the Docker service
#sudo service docker stop
sudo systemctl stop docker.socket docker.service
