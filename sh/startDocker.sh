#!/bin/bash
echo test123 | sudo -S /bin/systemctl start docker.socket docker.service
