#!/usr/bin/env bash
#
# Install rpm packages from bluebox_rpm.packages
#

echo "--- Installing RPM packages from url defined in bluebox_rpm.packages ---"

rpm_packages=/bluebox_rpm.packages && \
while IFS= read -r pkg; do
  bin=$(echo"$pkg" | cut -d':' -f1 -)
  url=$(echo "$pkg" | cut -d ' ' -f2 -)
  echo "Installing: ${bin}"
  dnf install -y $url
done

echo "---"

