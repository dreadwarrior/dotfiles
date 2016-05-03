#!/usr/bin/env bash
#
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:
#
# Sets the "AppleShowAllFiles" flag for the MacOS finder

dotfiles_install::darwin_finder_show_dotfiles() {
  defaults write com.apple.finder AppleShowAllFiles YES
  killall Finder
}

