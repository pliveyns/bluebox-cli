#!/usr/bin/env bash
#
# Install rpm packages from bluebox_tar.packages
#

echo "--- Installing binary packages from tar download in bluebox_tar.packages ---"

tar_packages=/bluebox_tar.packages
while IFS= read -r pkg; do
  bin=$(echo $pkg | cut -d':' -f1 -)
  url=$(echo $pkg | cut -d' ' -f2 -)
  echo "Installing: ${bin}"
  cd /tmp
  wget $url
  tar xvf $bin*
  mv $bin /usr/local/bin/
  chmod +x /usr/local/bin/$bin
  cd /
done < "$binary_packages"

echo "---"

