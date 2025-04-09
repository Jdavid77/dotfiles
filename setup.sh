#!/bin/bash

set -euo pipefail

if command -v zsh >/dev/null; then
    sudo chsh -s $(command -v zsh) $USER
fi

if ! command -v chezmoi >/dev/null; then
    sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply https://github.com/Jdavid77/dotfiles-demo.git
fi

exit 0

