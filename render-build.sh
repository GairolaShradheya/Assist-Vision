#!/usr/bin/env bash
set -e

echo "Downloading Piper Linux binary..."

mkdir -p piper

curl -L -o piper/piper.tar.gz \
https://github.com/rhasspy/piper/releases/latest/download/piper_linux_x86_64.tar.gz

tar -xzf piper/piper.tar.gz -C piper
rm piper/piper.tar.gz

echo "Checking piper contents..."
ls -lah piper

echo "Making executable..."
chmod 755 piper/piper

echo "Checking file type..."
file piper/piper

echo "Done."

