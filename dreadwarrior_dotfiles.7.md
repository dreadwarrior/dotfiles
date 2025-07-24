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

### Prerequisites: oh-my-zsh

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Prerequisites: Linux

    sudo apt install yadm

## Prerequisites: macOS

    # Install Homebrew + yadm
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install yadm

## Clone repository

    cd $HOME
    yadm clone git@github.com:dreadwarrior/dotfiles

## Optional step: configure YADM on a business machine

    yadm config local.class work
    yadm alt

Now restart your terminal session.

# SEE ALSO

yadm(1), dotfiles_aliases(7), dotfiles_commands(7)
