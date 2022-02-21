#!/bin/bash
set -eo pipefail

arch=$(uname -m)

if [ "$arch" == 'x86_64' ]
then
    echo "x86_64"
    curl -o dockerize-linux-amd64-v0.6.0.tar.gz https://github.com/jwilder/dockerize/releases/download/v0.6.0/dockerize-linux-amd64-v0.6.0.tar.gz -SL
    echo 'a13ff2aa6937f45ccde1f29b1574744930f5c9a5 dockerize-linux-amd64-v0.6.0.tar.gz' | sha1sum -c -
    tar xvfz dockerize-linux-amd64-v0.6.0.tar.gz -C /usr/local/bin && rm dockerize-linux-amd64-v0.6.0.tar.gz
else
    echo "arm"
    curl -o dockerize-linux-armhf-v0.6.0.tar.gz https://github.com/jwilder/dockerize/releases/download/v0.6.0/dockerize-linux-armhf-v0.6.0.tar.gz -SL
    echo '64c96edd9a73f4c5f4f8d044412391e4f8236b10 dockerize-linux-armhf-v0.6.0.tar.gz' | sha1sum -c -
    tar xvfz dockerize-linux-armhf-v0.6.0.tar.gz -C /usr/local/bin && rm dockerize-linux-armhf-v0.6.0.tar.gz
fi

