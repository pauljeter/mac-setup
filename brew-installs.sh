#!/usr/bin/env bash

#Check if Homebrew is installed
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    echo 'Please install Homebrew by running the following command: /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
else
    brew update
fi

#Upgrade installed formulae
brew upgrade

# Save Homebrew’s installed location
BREW_PREFIX=$(brew --prefix)

#Tools
brew tap mongodb/brew
brew install mongodb-community

brew install wget --with-iri
brew install gmp
brew install grep
brew install node
brew install pnpm

brew install git
brew install git-lfs
brew install github/gh/gh

brew install zsh

#Apps
brew install --cask dropbox
brew install --cask google-drive
brew install --cask firefox
brew install --cask homebrew/cask-versions/firefox-nightly
brew install --cask google-chrome
brew install --cask homebrew/cask-versions/google-chrome-canary
brew install --cask microsoft-edge
brew install --cask iterm2
brew install --cask evernote
brew install --cask spotify
brew install --cask tower
brew install --cask visual-studio-code
brew install --cask karabiner-elements
brew install --cask slack
brew install --cask signal
brew install --cask discord
brew install --cask cleanmymac
brew install --cask alfred
brew install --cask figma
brew install --cask lastpass
brew install --cask postman
brew install --cask omnifocus
brew install --cask mongodb-compass

# Remove outdated versions from the cellar.
brew cleanup