#!/usr/bin/env bash

set -euo pipefail

log() {
	echo "[POST_CREATE] $*"
}

# Start docker daemon. The script should've been put here by the DinD devcontainer feature
log "Starting Docker Daemon"
sudo /usr/local/share/docker-init.sh
#
# Add our user to docker group
sudo usermod -aG docker $USER

log "Installing docker provider with default options"
devpod provider add docker

log "Install my tools"
curl -sS https://starship.rs/install.sh | sh -s -- -y

log "Place my configs in the root"
cp .devcontainer/.tmux.conf ~
cp .devcontainer/.zshrc ~
cp -r .devcontainer/.config/nvim ~/.config

log "POST_CREATE DONE"
