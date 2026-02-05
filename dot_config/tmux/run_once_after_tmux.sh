#!/bin/zsh

path="~/.config/tmux/plugins/tpm-redux"

# Install the Tmux Plugins Manager
git clone https://github.com/RyanMacG/tpm-redux.git ${path}

# Install the plugins
./${path}/bin/install

