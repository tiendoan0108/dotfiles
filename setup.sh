#!/usr/bin/env bash
set -euo pipefail

log() {
  printf '[dotfiles] %s\n' "$*"
}

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DOTFILES_DIR"

require_cmd() {
  local name="$1"
  local hint="$2"
  if ! command -v "$name" >/dev/null 2>&1; then
    log "error: '$name' is required but not found."
    log "$hint"
    exit 1
  fi
}

require_cmd stow "Install with: brew install stow   (macOS) or sudo apt install stow   (Debian/Ubuntu)"
require_cmd git "Install git to clone tmux plugin manager (TPM)."

if command -v starship >/dev/null 2>&1; then
  log "starship already installed; skipping installer."
else
  log "installing starship..."
  curl -sS https://starship.rs/install.sh | sh
fi

log "stowing core packages: zshrc tmux ghostty starship nvim"
stow zshrc tmux ghostty starship nvim

TPM_DIR="${HOME}/.tmux/plugins/tpm"
if [[ -d "${TPM_DIR}/.git" ]]; then
  log "TPM already installed at ${TPM_DIR}; skipping clone."
else
  log "cloning tmux plugin manager (TPM)..."
  mkdir -p "$(dirname "$TPM_DIR")"
  git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
fi

log "done."
log ""
log "Next steps:"
log "  - zshrc expects Oh My Zsh plus zsh-autosuggestions and zsh-syntax-highlighting (see README)."
log "  - Optional packages: stow aerospace zed codex opencode   (or any other package directory in this repo)."
log "  - If stow reported a conflict, back up the existing file and rerun ./setup.sh."
log "  - In tmux, press prefix + I to install tmux plugins after TPM is present."
