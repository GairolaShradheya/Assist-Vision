#!/usr/bin/env bash
sudo set -e

sudo echo "Downloading Piper Linux binary..."

sudo mkdir -p piper

# Download Linux Piper binary
sudo curl -L -o piper/piper.tar.gz https://github.com/rhasspy/piper/releases/latest/download/piper_linux_x86_64.tar.gz

# Extract
sudo tar -xzf piper/piper.tar.gz -C piper
sudo rm piper/piper.tar.gz

# Make executable
sudo chmod +x piper/piper

sudo echo "Piper installed successfully!"
