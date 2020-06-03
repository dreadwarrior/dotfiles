#!/usr/bin/env bash
#
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:
#
# Installs magicmonty/bash-git-prompt into $HOME

dotfiles_install::bash_git_prompt() {
  cd $HOME
  if [ -d .bash-git-prompt ]; then
    (cd .bash-git-prompt; git fetch; git pull)
  else
    git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt
  fi
}
