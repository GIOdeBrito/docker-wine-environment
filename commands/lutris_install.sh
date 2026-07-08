#!/bin/bash

echo -e "Types: deb\nURIs: https://download.opensuse.org/repositories/home:/strycore:/lutris/Debian_13/\nSuites: ./\nComponents: \nSigned-By: /etc/apt/keyrings/lutris.gpg" | tee /etc/apt/sources.list.d/lutris.sources > /dev/null

wget -q -O- https://download.opensuse.org/repositories/home:/strycore:/lutris/Debian_13/Release.key | gpg --dearmor -o /etc/apt/keyrings/lutris.gpg 

apt-get update
apt-get install -y lutris
