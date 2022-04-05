#!/bin/bash
apt update
rm /var/lib/apt/lists/lock
rm /var/cache/apt/archives/lock
rm /var/lib/dpkg/lock
rm /var/lib/dpkg/lock-frontend
sudo dpkg --configure -a
apt install -y ruby-full ruby-bundler build-essential
