#!/usr/bin/env sh

#  ______  __   _  _____      __     _____  _   __
# |  __  ||  \ | ||___  /    /  \   |  ___|| | / /
# | |  | || \ \| |   / /    / /\ \  | |    | |/ /
# | |__| || |\ | |  / /__  / ____ \ | |___ | |\ \
# |______||_| \__| /_____|/_/    \_\|_____||_| \_\
#
# This is a ONZACK bash script

# Bash settings
## Exit immediately if a command fails
set -o errexit
## Exit as soon as a command in a pipelie ( bad command | good command ) fails
set -o pipefail
## Fail if expected variables are not defined
set -o nounset

source /etc/onzack.conf

while true; do
  echo "$CRASH_MESSAGE" | base64 -d > /dev/stdout
  sleep 3
done
