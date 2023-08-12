#!/bin/bash

apt-get install -y \
    awscli \
    buildah \
    build-essential \
    code \
    curl \
    ffmpeg \
    fzf \
    git \
    inkscape \
    jq \
    jxplorer \
    mysql-workbench-community \
    net-tools \
    obs-studio \
    openvpn \
    openvpn-systemd-resolved \
    packer \
    pandoc \
    podman \
    powertop \
    rename \
    tailscale \
    terraform \
    vagrant \
    vim \
    virtualbox \
    yt-dlp \
    zeal \
    zoom

python3 -m ensurepip --upgrade
python3 -m pip install konsave --break-system-package

