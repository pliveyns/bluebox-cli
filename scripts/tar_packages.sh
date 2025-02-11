#!/usr/bin/env bash
#
# Install rpm packages from recipe.yml
#

echo "--- Installing binary packages from tar download in recipe.yml --"

tar_packages=$(yq '.tar[]' < /tmp/config/recipe.yml | sed -e "s/: /\&/")
for pkg in $tar_packages; do
  bin=$(echo $pkg | cut -d'&' -f1 -)
  url=$(echo $pkg | cut -d'&' -f2 -)
  echo "Installing: ${bin}"
  cd /tmp
  wget $url
  tar xvf $bin*
  mv $bin /usr/local/bin/
  chmod +x /usr/local/bin/$bin
  cd /
done

echo "---"

