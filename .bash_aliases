# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
fi

system_type=$(uname -s)
if [ "$system_type" == "Darwin" ]; then
  alias ls='ls -G'
fi

alias ll='ls -lah'
alias llp='ll --color=always | grep --color=never'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias fuck='sudo $(history -p \!\!)'
# Quick LOC analysis
alias qloc='find . -type f -exec wc -l {} + | sort -rn'

alias rmi='rm -i'

# "Watch log"
alias wlog='less +F'

alias hosts='vim /etc/hosts'

alias mvmm='maven_verify_multi_module'

alias brewup='brew upgrade ; brew update ; brew upgrade --cask ; brew autoremove ; brew cleanup ;'
# brew (a)nalyze (d)ependencies
alias brewad='brew leaves | xargs brew deps --installed --for-each | sed "s/^.*:/$(tput setaf 4)&$(tput sgr0)/"'

# (p)rint CalVer string of current UTC date in format yyyy.mm.dd.hhmm, e.g. 2023.03.16.0822
alias pcalver='date -u +'\''%Y.%m.%d.%H%M'\'
# (p)rint (U)TC (t)ime(s)tamp with (m)illi(s)econds
alias putsms='gdate +%s%3N'

# Execute Maven skipping TRACE, DEBUG, INFO leveled logs
alias mvw='mvn -Dorg.slf4j.simpleLogger.defaultLogLevel=warn'

# Add JBang to environment
alias j!=jbang