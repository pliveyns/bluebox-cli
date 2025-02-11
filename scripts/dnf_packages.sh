#!/usr/bin/env bash
#
# Install dnf packages from bluebox_dnf.packages
#

echo "--- Installing DNF packages defined in bluebox_dnf.packages --"

dnf update -y
grep -v '^#' ./bluebox_dnf.packages | xargs dnf install -y

echo "---"

