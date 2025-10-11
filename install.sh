#!/usr/bin/env bash
set -e

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <mac|linux>"
  exit 1
fi

TARGET_OS=$1
if [[ "$TARGET_OS" != "mac" && "$TARGET_OS" != "linux" ]]; then
  echo "Invalid OS: $TARGET_OS. Must be 'mac' or 'linux'."
  exit 1
fi

DOTFILES_DIR=$(cd "$(dirname "$0")" && pwd)
HOME_TARGET="$HOME"

# helper
stow_pkg () {
  pkg=$1
  stow --dir="$DOTFILES_DIR" --target="$HOME_TARGET" "$pkg"
}

# First, stow common
stow_pkg common

# Then stow OS-specific
stow_pkg "$TARGET_OS"