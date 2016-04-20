# dotfiles

[yadm][yadm] managed dotfiles.

## Goals

1. Minimal dependency footprint ([yadm][yadm] uses `git` and `bash`)
2. **No** git submodules

## Installation

    ~$ sudo apt install yadm
    ~$ cd $HOME
    ~$ yadm init .
    ~$ yadm remote add origin git@github.com:dreadwarrior/dotfiles
    ~$ source ~/.bashrc
    ~$ dotfiles_install

## TODOs

  1. Test if these files are really needed and check security concerns:

     - .local/share/gtg/{gtg_tasks,projects,tags}.xml
     - .local/share/gnome-shell/extensions
     - .local/share/telepathy/mission-control/{accounts,accounts-goa}.cfg
     - .ssh/*
     - .gnupg/*

[yadm]: https://github.com/TheLocehiliosan/yadm
