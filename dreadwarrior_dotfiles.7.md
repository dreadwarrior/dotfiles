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

## Prerequisites: Linux

    sudo apt install yadm

## Prerequisites: macOS

    # Install Homebrew + yadm
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install yadm

    # Update bash
    brew install bash
    sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
    chsh -s /usr/local/bin/bash

## Clone repository

    cd $HOME
    yadm clone git@github.com:dreadwarrior/dotfiles

## macOS only: Initialize fzf

    $(brew --prefix)/opt/fzf/install

## Optional step: configure YADM on a business machine

    yadm config local.class work
    yadm alt

Now restart your terminal session.

# FEATURES

To quickly allow switching to software development projects in **workspace** or
**playground** folders the following Bash **CDPATH** is pre-configured:

    export CDPATH="$HOME/workspace:$HOME/playground:$CDPATH"

# SEE ALSO

dotfiles_install(1), yadm(1), dotfiles_aliases(7), dotfiles_commands(7)
