# brew (a)nalyze (d)ependencies
alias brewad='brew leaves | xargs brew deps --installed --for-each | sed "s/^.*:/$(tput setaf 4)&$(tput sgr0)/"'
