#! /bin/bash

# Setup vim config
echo "Backup old NeoVim configuration"
mv $HOME/.config/nvim $HOME/.config/nvim_bck
echo "Create symlink for NeoVim configuration"
ln -s $(pwd)/nvim $HOME/.config/nvim


# Setup Ghostty themes
echo "Create symlink for Ghostty themes"
mkdir -p $HOME/.config/ghostty
ln -s $(pwd)/ghostty/themes $HOME/.config/ghostty/themes
echo "Create symlink for Ghostty config"
ln -s $(pwd)/ghostty/config $HOME/.config/ghostty/config
