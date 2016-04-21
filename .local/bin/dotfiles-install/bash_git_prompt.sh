#!/bin/bash

# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:

dotfiles_install::bash_git_prompt() {
  cd $HOME
  git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt
}
