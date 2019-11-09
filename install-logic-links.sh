#!/usr/bin/env bash

sudo rm -rf /Library/Application\ Support/Logic/*
sudo rm -rf /Library/Audio/Apple\ Loops*

sudo ln -s /Volumes/Logic/Alchemy\ Samples /Library/Application\ Support/Logic/Alchemy\ Samples
sudo ln -s /Volumes/Logic/Apple\ Loops /Library/Application\ Support/Logic/Apple\ Loops
sudo ln -s /Volumes/Logic/EXS\ Factory\ Samples /Library/Application\ Support/Logic/EXS\ Factory\ Samples
sudo ln -s /Volumes/Logic/Plug-In\ Settings /Library/Application\ Support/Logic/Plug-In\ Settings
sudo ln -s /Volumes/Logic/Sampler\ Instruments /Library/Application\ Support/Logic/Sampler\ Instruments
sudo ln -s /Volumes/Logic/Ultrabeat\ Samples /Library/Application\ Support/Logic/Ultrabeat\ Samples

sudo ln -s /Volumes/Logic/Apple\ Loops /Library/Audio/Apple\ Loops
sudo ln -s /Volumes/Logic/Apple\ Loops\ Index /Library/Audio/Apple\ Loops\ Index