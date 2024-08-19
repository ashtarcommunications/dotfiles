#!/bin/bash

# Set VSCode executable name
if [[ "$(uname)" == "Darwin" ]]; then
    code="/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code"
else 
    code="/usr/bin/code"
fi

$code --install-extension dbaeumer.vscode-eslint
$code --install-extension dhoeric.ansible-vault
$code --install-extension esbenp.prettier-vscode
$code --install-extension github.copilot
$code --install-extension github.copilot-chat
$code --install-extension github.vscode-github-actions
$code --install-extension hashicorp.hcl
$code --install-extension hashicorp.terraform
$code --install-extension hbenl.vscode-mocha-test-adapter
$code --install-extension hbenl.vscode-test-explorer
$code --install-extension mrmlnc.vscode-duplicate
$code --install-extension ms-azuretools.vscode-docker
$code --install-extension ms-python.debugpy
$code --install-extension ms-python.python
$code --install-extension ms-python.vscode-pylance
$code --install-extension ms-toolsai.jupyter
$code --install-extension ms-toolsai.jupyter-keymap
$code --install-extension ms-toolsai.jupyter-renderers
$code --install-extension ms-toolsai.vscode-jupyter-cell-tags
$code --install-extension ms-toolsai.vscode-jupyter-slideshow
$code --install-extension ms-vscode-remote.remote-containers
$code --install-extension ms-vscode.test-adapter-converter
$code --install-extension ms-vscode.vscode-speech
$code --install-extension ms-vsliveshare.vsliveshare
$code --install-extension redhat.ansible
$code --install-extension redhat.vscode-yaml
$code --install-extension ritwickdey.liveserver
$code --install-extension vitest.explorer
$code --install-extension vscode-icons-team.vscode-icons
$code --install-extension vscodevim.vim
