#!/usr/bin/env bash

set -exuo pipefail

cd /home/arch
makepkg --syncdeps --install --noconfirm
mkdir -p /out
sudo cp launcher-kolide-k2-*.pkg.tar.zst /out
