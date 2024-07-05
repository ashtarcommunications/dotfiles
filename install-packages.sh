#!/bin/bash

apt-get install -y \
    binutils \
    buildah \
    build-essential \
    btop \
    cifs-utils \
    cloc \
    code \
    curl \
    dropbox \
    duf \
    fastboot \
    ffmpeg \
    fzf \
    git \
    glimpse \
    google-chrome-stable \
    gparted \
    htop \
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
    ripgrep \
    sane \
    screen \
    tailscale \
    terraform \
    trash-empty \
    vagrant \
    vim \
    virtualbox \
    wireguard \
    yt-dlp \
    zeal \
    zoom

python3 -m ensurepip --upgrade
python3 -m pip install konsave --break-system-package

