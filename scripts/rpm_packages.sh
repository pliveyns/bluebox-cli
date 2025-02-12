#!/usr/bin/env bash
#
# Install rpm packages from <toolbox>_rpm.packages
#

echo "--- Installing RPM packages from url defined in <toolbox>_rpm.packages ---"

rpm_packages=$1
while IFS= read -r pkg; do
  bin=$(echo "$pkg" | cut -d':' -f1 -)
  url=$(echo "$pkg" | cut -d ' ' -f2 -)
  echo "Installing: ${bin}"
  dnf install -y $url
done < "$rpm_packages"

echo "---"

