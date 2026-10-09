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
brew "chezmoi"

## Tools - IaC
brew "ansible"
brew "ansible-lint"
brew "terraform-docs"
tap "hashicorp/tap"
brew "hashicorp/tap/terraform"
brew "hashicorp/tap/packer"
brew "hashicorp/tap/hashicorp-vagrant"

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
brew "chrome-cli"
brew "gnupg"
brew "pinentry-mac"

# Utils - NeoVim
brew "fzf"
brew "ripgrep"

# Software
cask "utm" # virtualization
cask "keeweb"
cask "docker-desktop"
cask "telegram-desktop"

EOF

gcloud components install gke-gcloud-auth-plugin

