# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:

# extend $PATH
if [ -d ${HOME}/.local/bin ]; then
  PATH="${HOME}/.local/bin:${PATH}"
fi

# Add `bin` of current working directory to PATH
PATH="./bin:$PATH"

export CDPATH="$HOME/workspace:$HOME/playground:$CDPATH"
