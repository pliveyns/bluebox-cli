#!/usr/bin/env bash
#
# Install yazi cli file manager
#

echo "--- Installing yazi from copr repo"

dnf copr enable -y lihaohong/yazi &&
  dnf install -y yazi

echo "---"
