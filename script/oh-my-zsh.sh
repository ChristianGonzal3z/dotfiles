#!/bin/bash

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed."
    sudo apt-get update
    sudo apt-get install -y git
fi

# Download and install Oh My Zsh
echo "Downloading an installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Change the theme to "agnoster"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc

echo "Oh My Zsh has been installed and configured with the 'agnoster' theme."
echo "Please restart your terminal for the changes to take effect."
