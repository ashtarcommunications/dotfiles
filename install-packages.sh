#!/bin/bash

apt-get install -y \
    awscli \
    binutils \
    buildah \
    build-essential \
    cifs-utils \
    cloc \
    code \
    curl \
    dropbox \
    fastboot \
    ffmpeg \
    fzf \
    git \
    glimpse \
    google-chrome-stable \
    gparted \
    inkscape \
    ivpn-ui \
    jq \
    jxplorer \
    kde-plasma-desktop \
    lxc \
    make \
    mariadb-server \
    moreutils \
    mtp-tools \
    mysql-workbench-community \
    net-tools \
    obs-studio \
    packer \
    pandoc \
    podman \
    powertop \
    python3-pip \
    python-is-python3 \
    qemu-user-static \
    qemu-utils \
    rename \
    sane \
    screen \
    tailscale \
    terraform \
    vagrant \
    vim \
    virtualbox \
    wireguard \
    yt-dlp \
    zeal \
    zoom

python3 -m ensurepip --upgrade
python3 -m pip install konsave --break-system-package

