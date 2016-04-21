#!/bin/bash
#
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:
#
# Installs the Faba and Moka icon themes into $HOME/.local/share/icons

MOKA_TEMP_DIR="/tmp"

dotfiles_install::moka_icon_theme_prepare() {
  mkdir -p "$HOME/.local/share/icons"

  MOKA_TEMP_DIR="$(mktemp -t -d faba_moka_icon_theme.XXX)"
  cd "$MOKA_TEMP_DIR"

  git clone https://github.com/moka-project/faba-icon-theme.git
  git clone https://github.com/moka-project/faba-mono-icons.git
  git clone https://github.com/moka-project/moka-icon-theme.git
}

dotfiles_install::moka_icon_theme_install() {
  dotfiles_install::moka_icon_theme_prepare

  cd "$MOKA_TEMP_DIR/faba-icon-theme"
  bash install-icon-theme.sh

  cd "$MOKA_TEMP_DIR/faba-mono-icons"
  cp -Rf "Faba-Mono" "$HOME/.local/share/icons"
  cp -Rf "Faba-Mono-Dark" "$HOME/.local/share/icons"

  cd "$MOKA_TEMP_DIR/moka-icon-theme"
  cp -Rf "Moka" "$HOME/.local/share/icons"
}
