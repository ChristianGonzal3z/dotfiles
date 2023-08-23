#!/bin/bash

# Check if Homebrew is already installed
if command -v brew &>/dev/null; then
    echo "Homebrew is already installed."
    exit 0
fi

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Check if the installation was successful
if command -v brew &>/dev/null; then
    echo "Homebrew installation successful."
else
    echo "Homebrew installation failed."
fi

# Install brew app
declare -a apps=(
  'git'
  'git-gui'
  'lua'
  'mingw-w64'
  'neovim'
  'zsh'
  'zsh-syntax-highlighting'
  'neofetch'
)
echo "Installing brew apps"
for app in "${apps[@]}"; do
    echo "      Installing ${app}"
    brew install "$app"
done
echo


# Install brew cask

declare -a cask_app=(
 
 'bitwarden'
 'fig'
 'font-hack-nerd-font'
 'github'
 'lunacy'
 'orbstack'
 'rar'
 'item2'

)

echo "Installing brew cask apps"
for cask_app in "${cask_apps[@]}"; do
    echo "      Installing ${cask_app}"
    brew install --cask "$cask_app"
done
echo 

brew cleanup
