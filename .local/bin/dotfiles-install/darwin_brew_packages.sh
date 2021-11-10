#!/usr/bin/env bash
#
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:
#
# Installs relevant Homebrew packages

system_type=$(uname -s)

dotfiles_install::darwin_brew_packages() {
  if [ "$system_type" = "Darwin" ]; then
    brew analytics off

    brew bundle install
  else
      echo "[skip] Installation of Homebrew packages is available only on macOS machines."
  fi
}

