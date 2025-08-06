#!/usr/bin/env bash
# used for dev containers
set -euo pipefail

# alacritty info
curl -sSL https://raw.githubusercontent.com/alacritty/alacritty/master/extra/alacritty.info | tic -x -

if command -v zsh >/dev/null; then
  sudo chsh -s $(command -v zsh) $USER
fi

if ! command -v chezmoi >/dev/null; then
  # Just init, don't apply yet
  sh -c "$(curl -fsLS get.chezmoi.io)" -- init https://github.com/Jdavid77/dotfiles-demo.git
  
  echo "Chezmoi initialized. Run 'chezmoi apply' and enter your passphrase when ready."
fi

exit 0