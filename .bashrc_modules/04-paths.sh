# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:

# extend $PATH
if [ -d ${HOME}/.local/bin ]; then
  PATH="${HOME}/.local/bin:${PATH}"
fi

if [ -d ${HOME}/.composer/vendor/bin ]; then
  PATH="${HOME}/.composer/vendor/bin:${PATH}"
fi
# add ./bin to path
PATH="./bin:$PATH"

export CDPATH="$HOME/workspace:$HOME/playground:$CDPATH"
export GOPATH="$HOME/workspace/golang"

