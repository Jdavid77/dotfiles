#!/usr/bin/env bash

# used for dev containers

set -euo pipefail

# allacrity info
curl -sSL https://raw.githubusercontent.com/alacritty/alacritty/master/extra/alacritty.info | tic -x -

if command -v zsh >/dev/null; then
  sudo chsh -s $(command -v zsh) $USER
fi

if ! command -v chezmoi >/dev/null; then
  sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply https://github.com/Jdavid77/dotfiles.git
fi

exit 0