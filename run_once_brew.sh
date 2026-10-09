#!/bin/bash

brew bundle --file=/dev/stdin <<EOF
# Productivity
brew "neovim"
brew "tmux"
cask "ghostty"

# Programming
brew "go"

# Tools
brew "d2"
brew "k6"
brew "task"

## Tools - IaC
brew "ansible"
brew "ansible-lint"
brew "terraform"
brew "terraform-docs"
brew "packer"
cask "hashicorp-vagrant"

## Tools - Kubernetes
brew "kubernetes-cli"
brew "kubectx"
brew "kubecolor"

# Tools - Cloud Providers
cask "gcloud-cli"
brew "awscli"

# Utils
brew "ccat" # color cat
brew "coreutils"
brew "gnu-sed"
brew "jq"
brew "yq"
brew "wget"
brew "telnet"
brew "fzf"
brew "chrome-cli"

# Software
cask "utm" # virtualization
cask "keeweb"
cask "docker-desktop"
cask "telegram-desktop"

EOF

