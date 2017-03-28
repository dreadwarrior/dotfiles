# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

source $HOME/.bashrc_modules/00-shell_options.sh
source $HOME/.bashrc_modules/01-history_control.sh
source $HOME/.bashrc_modules/02-color_prompt.sh
source $HOME/.bashrc_modules/03-readline.sh
source $HOME/.bashrc_modules/04-paths.sh
source $HOME/.bashrc_modules/05-completion.sh

if [ -f $HOME/.bashrc_modules/06-token.sh ]; then
  source $HOME/.bashrc_modules/06-token.sh
fi

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -d ~/.bash-git-prompt ]; then
  GIT_PROMPT_ONLY_IN_REPO=1
  GIT_PROMPT_SHOW_UPSTREAM=1
  GIT_PROMPT_THEME=Solarized
  source ~/.bash-git-prompt/gitprompt.sh
fi

# vulnerable to shellshock? http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-6271
env x='() { :;}; echo "WARNING: SHELLSHOCK DETECTED"' bash --norc -c ':' 2>/dev/null;

