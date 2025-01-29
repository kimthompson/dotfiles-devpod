#!/bin/bash

# Set up XDG_CONFIG_HOME
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_CONFIG_HOME"/nixpkgs

# Create symlinks for existing configurations
ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
ln -sf "$PWD/.zshrc" "$HOME"/.zshrc
ln -sf "$PWD/config.nix" "$XDG_CONFIG_HOME"/nixpkgs/config.nix

# Install Nix packages from config.nix
# nix-env -iA nixpkgs.myPackages

# if Nix is broken due to timeouts, fall back to brew
# packages=(
# 	fd
# 	ripgrep
# 	npm
# 	lazygit
# 	fzf
# 	direnv
# )

# Iterate over the array and install each package
# for package in "${packages[@]}"; do
# 	echo "Installing $package..."
# 	/home/linuxbrew/.linuxbrew/bin/brew install "$package"
# done
#
# echo "All packages have been installed."

# Silence source warning

touch "$HOME/.privaterc"

echo "Setup complete. Zsh configuration files have been downloaded and set up."
