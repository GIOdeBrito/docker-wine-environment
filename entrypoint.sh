#!/bin/bash

printf "ENV VARIABLES:\n"
env

printf "\n\nUSER: \n"

#whoami

#printf "\n\nRUNNING PROGRAM...\n\n"

#wine notepad.exe

#wine /programsdir/ps/PSCS6.exe

#winecfg

#wine /programsdir/cadaver/Cadaver.exe

printf "Setting up aliases"

echo 'alias ll="ls -la"' >> ~/.bashrc

sleep infinity
