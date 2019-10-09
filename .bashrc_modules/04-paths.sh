# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:

# extend $PATH
if [ -d ${HOME}/.local/bin ]; then
  PATH="${HOME}/.local/bin:${PATH}"
fi

if [ -d ${HOME}/.composer/vendor/bin ]; then
  PATH="${HOME}/.composer/vendor/bin:${PATH}"
fi

python --version 1>/dev/null 2>&1 && {
  _python_version="$(python --version 2>&1 | cut -d ' ' -f 2 | cut -d '.' -f 1,2)";
  PATH="~/Library/Python/$_python_version/bin/:$PATH";
}

python3 --version 1>/dev/null 2>&1 && {
  _python_version="$(python3 --version | cut -d ' ' -f 2 | cut -d '.' -f 1,2)";
  PATH="~/Library/Python/$_python_version/bin/:$PATH";
}

PATH="./bin:$PATH"

export CDPATH="$HOME/workspace:$HOME/playground:$CDPATH"
export GOPATH="$HOME/workspace/golang"
#export PYTHONPATH="$PYTHONPATH:$HOME/.local/lib/python$(python --version)/site-packages"

#if which ruby >/dev/null && which gem >/dev/null; then
#  PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
#fi

