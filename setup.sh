#! /bin/bash

# Setup vim config
echo "Backup old NeoVim configuration"
mv $HOME/.config/nvim $HOME/.config/nvim_bck
echo "Create symlink for NeoVim configuration"
ln -s $(pwd)/nvim $HOME/.config/nvim

