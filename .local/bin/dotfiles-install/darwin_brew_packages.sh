#!/usr/bin/env bash
#
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:
#
# Installs some relevant brew packages

dotfiles_install::darwin_brew_packages() {
  brew analytics off

  brew install mplayer
  brew install git
  brew install bash-completion
}

