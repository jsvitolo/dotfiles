#!/usr/bin/env bash

# Install command-line tools using Homebrew

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Brew Extras
brew tap caskroom/versions
brew tap choppsv1/term24
brew tap caskroom/fonts
brew tap d12frosted/emacs-plus

brew install tree
brew install htop-osx
brew install pgcli
brew install watchman
brew install tmux --HEAD
brew install openssl
brew install stow
brew install earn
brew install emacs-plus
brew install reattach-to-user-namespace
brew install zsh
brew install coreutils
brew install gnupg
brew install ag
brew install aspell


brew cask install iterm2-beta
brew cask install font-fira-code
brew cask install font-source-code-pro
brew cask install font-sourcecodepro-nerd-font
brew cask install slack
brew cask install google-chrome


# Remove outdated versions from the cellar.
brew cleanup
