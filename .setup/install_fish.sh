#!/bin/bash

sudo apt-add-repository --assume-yes ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get  --assume-yes install fish
chsh -s `which fish` 
fish
