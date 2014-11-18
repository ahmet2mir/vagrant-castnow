#!/bin/bash
apt-get update
apt-get install -y --no-install-recommends curl libav-t	ools git ca-certificates
ln -s /usr/bin/avconv /usr/bin/ffmpeg
curl -sL https://deb.nodesource.com/setup | bash -
apt-get install -y nodejs
npm install castnow -g
