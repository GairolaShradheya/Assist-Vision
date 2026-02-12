#!/usr/bin/env bash
set -e

echo "Downloading Piper Linux binary..."

mkdir -p piper

# Download Linux Piper binary
curl -L -o piper/piper.tar.gz https://github.com/rhasspy/piper/releases/latest/download/piper_linux_x86_64.tar.gz

# Extract
tar -xzf piper/piper.tar.gz -C piper
rm piper/piper.tar.gz

# Make executable
chmod +x piper/piper

echo "Piper installed successfully!"
