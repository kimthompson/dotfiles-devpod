#!/usr/bin/env bash

set -euo pipefail

log() {
	echo "DOTFILES_INSTALL $*"
}

log "Place my configs in the root"
cp ~/dotfiles/.tmux.conf ~
cp ~/dotfiles/.zshrc ~
cp -r ~/dotfiles/.config/nvim ~/.config

log "DONE"
