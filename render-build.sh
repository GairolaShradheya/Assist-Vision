#!/usr/bin/env bash
set -e

echo "Downloading Piper Linux binary..."

mkdir -p piper

curl -L -o piper/piper.tar.gz \
https://github.com/rhasspy/piper/releases/latest/download/piper_linux_x86_64.tar.gz

tar -xzf piper/piper.tar.gz -C piper
rm piper/piper.tar.gz

echo "Listing piper folder..."
ls -lah piper

# Usually the extracted binary becomes: piper/piper
chmod +x piper/piper || true

echo "Checking executable..."
file piper/piper || true
ls -lah piper/piper || true

echo "Piper installed successfully!"
