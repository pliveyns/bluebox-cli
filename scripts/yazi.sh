#!/usr/bin/env bash
#
# Install dnf packages from <toolbox>_dnf.packages
#

echo "--- Installing yazi from copr repo"

dnf copr enable lihaohong/yazi
dnf install -y yazi

echo "---"
