#!/usr/bin/env bash
#
# Install apt packages from <toolbox>_apt.packages
#

echo "--- Installing APT packages defined in <toolbox>_apt.packages --"

apt update && apt upgrade -y
grep -v '^#' $1 | xargs apt install -y

echo "---"

