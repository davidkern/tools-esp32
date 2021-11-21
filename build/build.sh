#!/bin/bash -eux

export DEBIAN_FRONTEND=noninteractive

# get updates
apt-get update

# install additional apt packages
xargs -a packages apt-get install -y

# cleanup
rm -rf /var/lib/apt/lists/*
