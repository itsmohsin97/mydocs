#!/bin/bash

while true; do
    # Run the shell script
    /home/myself/sh/sshdocker.sh

    # Check the exit status
    if [ $? -eq 0 ]; then
        echo "Script succeeded."
        break
    else
        echo "Script failed. Retrying..."
    fi

    # Add a delay before retrying (optional)
    sleep 1
done
