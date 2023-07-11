#!/bin/bash

# Function to execute container_exit.sh script
execute_container_exit_script() {
    echo "Executing container_exit.sh script"
    bash /home/myself/sh/containerExit.sh
}

# Monitor Docker events for container exits
docker events --filter event=die --format '{{.ID}}' | while read -r container_id; do
    echo "Container $container_id has exited"
    /home/myself/sh/dockerRestart.sh
done
