# shellcheck shell=bash

# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Bash completion for Mac
# Check if brew is available (@see http://stackoverflow.com/a/677212)
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ "$(type brew 2>/dev/null)" && -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

# kubectl completion
if command -v kubectl &> /dev/null; then
  source <(kubectl completion bash)
fi

# go-task completion
source $(brew ls go-task | grep --color=never bash_completion)