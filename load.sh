#!/bin/bash

if [[ -d "$HOME/.config/nvim" ]]; then
  read -p "Config file found, replace? [y/n]: " response
  if ! [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]; then
    echo "Ok, goodbye!"
    exit 1
  fi
  rm -r $HOME/.config/nvim
fi

mkdir $HOME/.config/nvim

cp -r init.lua lua snippets stylua.toml $HOME/.config/nvim
