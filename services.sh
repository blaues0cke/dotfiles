#!/usr/bin/env bash

# Install services
mkdir ~/Library/Services
cp -n -R ./services/* ~/Library/Services

echo "Dont forget to open the extensions system preferences and enable the services"