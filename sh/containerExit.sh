#!/bin/bash

# Actions to perform when a container exits
docker ps -a --filter "status=exited"
echo "A Docker container has exited"
