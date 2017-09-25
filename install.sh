#!/bin/bash -e
apt-get -y update
apt-get -y install build-essential module-init-tools
bash /nvidia.run -s
