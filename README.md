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

## Upgrade gh-pages branch

Create new branch if not existing already in the repository:

    true | git mktree | xargs git commit-tree | xargs git branch gh-pages

Write Git tree object with current (committed) state of the static resources
folder:

     > git write-tree --prefix=.local/bin/man
     < <Git Tree ID>

Commit the tree to the specific branch:

     > git commit-tree -p gh-pages -m "<Your commit message>" <Git Tree ID>
     < <Git Commit ID>

Update references on specific branch:

     git update-ref refs/heads/gh-pages <Git Commit ID>

The branch is now ready to be pushed to upstream.

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

