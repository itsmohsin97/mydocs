#!/bin/bash

# Check if the database container is running on a different server
if ! ssh myself@10.0.0.96 'docker ps | grep demo'; then
    echo "Database container is not running on the database server."
    exit 1
fi

# Start the other container if the condition is met
echo "Starting the other container..."
/home/myself/sh/startDocker.sh
