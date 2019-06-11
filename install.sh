#!/bin/bash

# This is a small script for me
# This script will install my basic MacOS configuration
# In order to run it : you need to run this cmd :
# chmod 700 ~/path/to/file.sh 
# Don't forget to install fonts and do some styling on iterm2

$theme = "Agnoster"

# Homebrew : www.brew.sh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Iterm2

brew cask install iterm2

# VS Code

brew cask install visual-studio-code

# Docker

brew cask install docker

# intellij-idea

brew cask install intellij-idea

# chrome

brew cask install google-chrome

# Oh My ZSH

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Oh My ZSH - autosuggestions

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Change .zshrc file

sed -i 's/ZSH_THEME=.*/ZSH_THEME='$theme'/' ~/.zshrc

echo "plugins=(git zsh-autosuggestions docker docker-compose npm mvn)" >> ~/.zshrc

# Installing fonts

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
