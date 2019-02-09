#!/usr/bin/env bash

# fetch the latest configuration from github, then restart i3

set -ex

cd /tmp

curl https://github.com/FPurchess/config/archive/master.zip -L -o config.zip

unzip config.zip

mv config-master/* $HOME || echo

rm -rf config-master config.zip

i3-msg restart