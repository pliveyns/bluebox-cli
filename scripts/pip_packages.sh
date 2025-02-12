#!/usr/bin/env bash
#
# Install pip packages from <toolbox>_pip.packages
#

echo "--- Installing pip packages defined in <toolbox>_pip.packages ---"

grep -v '^#' ./iotbox_pip.packages | xargs python3 -m pip install -U

echo "---"

