#!/bin/bash

printf "ENV VARIABLES:\n"
env

printf "\n\nUSER: \n"
whoami

printf "Setting up aliases"

echo 'alias ll="ls -la"' >> ~/.bashrc

chmod +x /commands/lutris_install.sh
chmod +x /commands/wine_install.sh

sleep infinity

printf "Container is available for access"

#exec "@"
