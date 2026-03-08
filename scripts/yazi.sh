#!/usr/bin/env bash
#
# Install yazi cli file manager
#

echo "--- Installing yazi from copr repo"

dnf copr enable -y lihaohong/yazi
dnf --enablerepo copr:copr.fedorainfracloud.org:lihaohong:yazi install -y yazi
dnf install -y ffmpeg-free

echo "---"
