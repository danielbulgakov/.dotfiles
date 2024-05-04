#!/bin/bash

# Install nvim using snap
sudo snap install nvim --classic

# Install NvChad
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

# Delete .git folder
rm -rf ~/.config/nvim/.git

# Run :MasonInstallAll command after lazy.nvim finishes downloading plugins.