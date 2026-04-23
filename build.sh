#!/bin/bash
set -e

sudo apt update
sudo apt install -y live-build

lb config \
 --distribution noble \
 --debian-installer live \
 --archive-areas "main universe multiverse"

lb build
