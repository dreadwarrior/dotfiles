% dreadwarrior_dotfiles(7) dreadwarrior | dotfiles
%
% November 2021

# NAME

**dreadwarrior's dotfiles**

# DESCRIPTION

This project contains configuration files, aliases and useful commands to
quickly set up a macOS or Linux-based workstation according to my needs.

# REQUIREMENTS

- macOS or Linux
- Bash
- yadm
- Homebrew (macOS)

# INSTALLATION

On **Linux**:

    $ sudo apt install yadm
    $ cd $HOME
    $ yadm clone git@github.com:dreadwarrior/dotfiles
    $ # the next step is optional for YADM configuration on a business machine:
    $ yadm config local.class work
    $ yadm alt
    $ source ~/.bashrc
    $ dotfiles_install

On **macOS**:

    # Install Homebrew + yadm
    $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    $ brew install yadm

    # Update bash
    $ brew install bash
    $ sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
    $ chsh -s /usr/local/bin/bash

    # same as on Linux:
    $ cd $HOME
    $ yadm clone git@github.com:dreadwarrior/dotfiles
    $ # the next step is optional for YADM configuration on a business machine:
    $ yadm config local.class work
    $ yadm alt
    $ source ~/.bashrc
    $ dotfiles_install
    $ $(brew --prefix)/opt/fzf/install

# SEE ALSO

dotfiles_install(1), yadm(1), dotfiles_aliases(7), dotfiles_commands(7)
