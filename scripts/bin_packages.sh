#!/usr/bin/env bash
#
# Install binary packages from bluebox_bin.packages
#

echo "--- Installing binary packages from download link in bluebox_bin.packages --"

binary_packages=/bluebox_bin.packages
while IFS= read -r pkg; do
  bin=$(echo "$pkg" | cut -d':' -f1 -)
  url=$(echo "$pkg" | cut -d' ' -f2 -)
  echo "Installing: ${bin}"
  curl -L $url -o /usr/local/bin/$bin
  chmod +x /usr/local/bin/$bin
done < "$binary_packages"

echo "---"

