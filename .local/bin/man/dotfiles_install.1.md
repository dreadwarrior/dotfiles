% dotfiles_install(1) dreadwarrior | dotfiles
%
% November 2021

# NAME

**dotfiles_install** - Finish setup of dotfiles.

# SYNOPSIS

**`dotfiles_install`** \[`-p`]
                       \[`-m`]
                       \[`-b`]
                       \[`-f`]
                       \[`-h`]

# DESCRIPTION

Finishing the setup of the **dotfiles** installation varies between different
operating systems:

On **Linux**:

- installation of Moka icon theme

On **macOS**:

- installation of packages from **Brewfile**
- Finder configuration

**Cross-plattform**:

- installation of **bash-git-prompt**

The installation routine uses a trivial operating system probing routine to
protect the user against mutually exclusive installation constellations. E.g.
using **`-b`** on a non-macOS machine will echo an informational note and
skip the installation process of dependencies from Brewfiles.

# OPTIONS

`-p`, `--bashgitprompt`, `--no-bashgitprompt`

:   Whether to install **bash-git-prompt** or not. (defaults to "on")

`-m`, `--mokaicontheme`, `--no-mokaicontheme`

:   Whether to install the Moka icon theme or not. (defaults to "off")

`-b`, `--brewbundle`, `--no-brewbundle`

:   Whether to install brew dependencies from the **Brewfile** or not.
    (defaults to "off")

`-f`, `--finder`, `--no-finder`

:   Whether to configure Finder with some additional settings or not.
    (defaults to "on")

`-h`, `--help`

:   Prints help

# SEE ALSO

dreadwarrior_dotfiles(7)
