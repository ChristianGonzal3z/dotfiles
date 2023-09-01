#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Check if Neovim is installed via Homebrew
if ! brew list --formula | grep neovim &> /dev/null; then
    echo "neovim is not installed."
    brew install neovim
fi

# Clone the NvChad repository into the ~/.config/nvim directory
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Launch Neovim
nvim
