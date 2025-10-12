#!/usr/bin/env bash
set -e

# Define target directories
DOTFILES_DIR=$(cd "$(dirname "$0")" && pwd)
HOME_TARGET="$HOME"

# Function to stow a package
stow_pkg() {
  local pkg_dir="$1"
  echo "Stowing $pkg_dir"
  stow --dir="$pkg_dir" --target="$HOME_TARGET" .
}

# Stow common configurations
for dir in "$DOTFILES_DIR/common"/*/; do
  if [[ -d "$dir" ]]; then
    stow_pkg "$dir"
  fi
done

# Stow OS-specific configurations
for dir in "$DOTFILES_DIR/$1"/*/; do
  if [[ -d "$dir" ]]; then
    stow_pkg "$dir"
  fi
done
