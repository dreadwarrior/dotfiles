# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:

# Display matches for ambiguous patterns at first tab press
bind "set show-all-if-ambiguous on"
# cycle through possible completions
bind TAB:menu-complete
# shift+ctrl reverse-cycles through possible completions
bind '"\e[Z": "\e-1\C-i"'

# bind ctrl+cursor keys for moving between words on CLI
bind '"\e[1;5C": forward-word'
bind '"\e[1;5D": backward-word'
bind '"\e[5C": forward-word'
bind '"\e[5D": backward-word'
bind '"\e\e[C": forward-word'
bind '"\e\e[D": backward-word'

