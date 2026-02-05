#!/bin/zsh

tpm_path="${HOME}/.config/tmux/plugins/tpm-redux"

# Install the Tmux Plugins Manager
git clone https://github.com/RyanMacG/tpm-redux.git ${tpm_path}

# Install the plugins
${tpm_path}/bin/install

