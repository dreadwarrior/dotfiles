#!/usr/bin/env bash
#
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:
#
# Performs some adjustments for the Finder

# Show Hidden Files
dotfiles_install::darwin_finder::show_dotfiles() {
  defaults write com.apple.finder AppleShowAllFiles true
}

# Show All File Extensions
dotfiles_install::darwin_finder::show_all_file_extensions() {
  defaults write NSGlobalDomain AppleShowAllExtensions -bool true
}

# Disable Creation of Metadata Files on Network Volumes
# Avoids creation of .DS_Store and AppleDouble files.
# https://github.com/herrbischoff/awesome-osx-command-line#disable-creation-of-metadata-files-on-network-volumes
dotfiles_install::darwin_finder::disable_metadata_on_network_volumes() {
  defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
}

# Disable Creation of Metadata Files on USB Volumes
# Avoids creation of .DS_Store and AppleDouble files.
# https://github.com/herrbischoff/awesome-osx-command-line#disable-creation-of-metadata-files-on-usb-volumes
dotfiles_install::darwin_finder::disable_metadata_on_usb_volumes() {
  defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
}

dotfiles_install::darwin_finder() {
  dotfiles_install::darwin_finder::show_dotfiles
  dotfiles_install::darwin_finder::show_all_file_extensions
  dotfiles_install::darwin_finder::disable_metadata_on_network_volumes
  dotfiles_install::darwin_finder::disable_metadata_on_usb_volumes

  killall Finder
}

