#!/usr/bin/env bash
#
# Install dnf packages from <toolbox>_dnf.packages
#

echo "--- Installing DNF packages defined in <toolbox>_dnf.packages --"

dnf update -y
grep -v '^#' $1 | xargs dnf install -y

echo "---"

