# dotfiles

[yadm][yadm] managed dotfiles.

## Goals

1. Minimal dependency footprint ([yadm][yadm] uses `git` and `bash`)
2. **No** git submodules

## Installation / setup

### Linux

    ~$ sudo apt install yadm
    ~$ cd $HOME
    ~$ yadm clone git@github.com:dreadwarrior/dotfiles
    ~$ # the next step is optional for YADM configuration on a business machine:
    ~$ yadm config local.class work
    ~$ yadm alt
    ~$ source ~/.bashrc
    ~$ dotfiles_install

### MacOS

    # Install Homebrew + yadm
    ~$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ~$ brew install yadm

    # Update bash
    ~$ brew install bash
    ~$ sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
    ~$ chsh -s /usr/local/bin/bash

    # same as on Linux:
    ~$ cd $HOME
    ~$ yadm clone git@github.com:dreadwarrior/dotfiles
    ~$ # the next step is optional for YADM configuration on a business machine:
    ~$ yadm config local.class work
    ~$ yadm alt
    ~$ source ~/.bashrc
    ~$ dotfiles_install
    ~$ $(brew --prefix)/opt/fzf/install

## TODOs

  1. Test if these files are really needed and check security concerns:

     - .local/share/gtg/{gtg_tasks,projects,tags}.xml
     - .local/share/gnome-shell/extensions

  2. Integrate global system name probing (`uname -s`), individual usage by `dotfiles-install/*` scripts

## Links / Notes

  - [Upgrade to bash 4 in Mac OS X](http://clubmate.fi/upgrade-to-bash-4-in-mac-os-x/)
  - `⌘ CMD`+`⇧ SHIFT`+`.` Reveals hidden files in Open/Save dialogs on Mac OS
  - [Spring-Cleaning Homebrew Dependencies](http://patricklenz.co/blog/2012/5/21/spring-cleaning-homebrew-dependencies)


[yadm]: https://github.com/TheLocehiliosan/yadm

