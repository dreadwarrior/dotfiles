# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
fi

system_type=$(uname -s)
if [ "$system_type" == "Darwin" ]; then
  alias ls='ls -G';
fi

alias ll='ls -lah'
alias llp='ll --color=always | grep --color=never'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias fuck='sudo $(history -p \!\!)'

alias rmi='rm -i'
alias install-composer='curl -sS https://getcomposer.org/installer | php -- --filename=composer'
alias php='php -dzend_extension=xdebug.so'
alias phpunit='php $(which phpunit)'

alias vup='vagrant up'
alias vsh='vagrant up && vagrant ssh'
alias vha='vagrant halt'
alias vrl='vagrant reload'

# "docker machine up" - "docker machine down"
#
alias dmu='docker-machine start'
alias dmd='docker-machine stop'
alias dme='docker-machine env'
alias dob='docker build -t'
alias docker_inspect_mounts='docker inspect --format '"'"'{{ .Mounts }}'"'"''

# "Watch log"
#
alias wlog='less +F'

alias hosts='vim /etc/hosts'

