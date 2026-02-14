#!/bin/bash
set -e

echo "Configuring Git..."
git config --global user.name "Tony Klein"
git config --global user.email "github@tony-klein.de"
git config --global init.defaultBranch main
git config --global pull.rebase false
git config --global core.editor nano
git config --global --add safe.directory '*'

echo "Configuring Powerlevel10k theme..."
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc

echo "Initializing chezmoi dotfiles..."
chezmoi init --apply MergeMartialArts

echo "Post-create setup completed!"
