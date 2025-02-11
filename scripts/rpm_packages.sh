#!/usr/bin/env bash
#
# Install rpm packages from recipe.yml
#

echo "--- Installing RPM packages from url defined in recipe.yml --"

rpm_urls=$(yq '.rpm[]' < /tmp/config/recipe.yml | sed -e "s/: /\&/")
for pkg in $rpm_urls; do
    bin=$(echo $pkg | cut -d'&' -f1 -)
    url=$(echo $pkg | cut -d'&' -f2 -)
    echo "Installing: ${bin}"
    dnf install -y $url
done

echo "---"

