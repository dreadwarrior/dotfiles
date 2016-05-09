# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:

alias fuck='sudo $(history -p \!\!)'

alias ll='ls -lah'
alias llp='ll --color=always | grep --color=never'

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

# "Watch log"
#
alias wlog='less +F'

