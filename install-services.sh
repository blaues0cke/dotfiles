#!/usr/bin/env bash

mkdir -p ~/Library/Services
cp -n -R ./assets/services/* ~/Library/Services

echo "Dont forget to open the extensions system preferences and enable the services"