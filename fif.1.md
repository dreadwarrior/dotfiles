% fif(1) dreadwarrior | dotfiles
%
% April 2022

# NAME

**fif** - Search for file contents with `fzf` and ripgrep (`rg`).

# SYNOPSIS

**`fif`** _search-term_

# DESCRIPTION

Search recursively for file contents combined with a `fzf` preview panel.

# OPTIONS

_search-term_

:   Term to be searched for.

# EXAMPLES

Imagine a Java project. To find all files which contains the term "Factory",
use the command as following:

    $ fif Factory

# SEE ALSO

fzf(1), rg(1)
