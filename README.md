# dotfiles

[yadm][yadm] managed dotfiles.

## Goals

1. Minimal dependency footprint ([yadm][yadm] uses `git` and `bash`)
2. **No** git submodules

## What does it do?

All executable shell scripts reside in `.local/bin`. `$PATH` is extended in
`.bashrc`.

### dotfiles_install

This custom installation script currently `git clone`s [bash-git-prompt][bash_git_prompt]
into the `$HOME` directory. It is `source`d in `.bashrc`.

As a second step the install script `git clones` the [Moka][moka_icon_theme] and
[Faba][faba_icon_theme] icon themes to a temporary directory and executs the [install script
of the Faba icon theme][faba_icon_theme_install]. The [Faba Mono][faba_mono_icon_theme]
and [Moka][moka_icon_theme] icon themes are copied to `.local/share/icons`. This path is
created if not existing.

### Other scripts

  <dl>
    <dt>**fixbom**</dt>
    <dd>Removes and re-applies UTF-8 Byte Order Mark to a set of files.</dd>
    <dt>**ssl_inspect**</dt>
    <dd>Outputs information about an (HTTP-)SSL certificate of a given hostname.</dd>
    <dt>**status**</dt>
    <dd>Work-in-progress script for printing out hardware information (battery, cpu, ...)</dd>
    <dt>**stream**</dt>
    <dd>Simple wrapper around `mplayer -playlist` for listening to shoutcast streams.</dd>
    <dt>**tabs_to_spaces**</dt>
    <dd>Converts tab indentation in files to spaces.</dd>
    <dt>**unixtime**</dt>
    <dd>Prints the current unix timestamp</dd>
    <dt>**vagrant_vm_portmap**</dt>
    <dd>Gives information about current port mappings of a vagrant powered virtual machine</dd>
  </dl>

## Installation / setup

    ~$ sudo apt install yadm
    ~$ cd $HOME
    ~$ yadm clone git@github.com:dreadwarrior/dotfiles
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
[bash_git_prompt]: https://github.com/magicmonty/bash-git-prompt
[moka_icon_theme]: https://github.com/moka-project/moka-icon-theme
[faba_icon_theme]: https://github.com/moka-project/faba-icon-theme
[faba_icon_theme_install]: https://github.com/moka-project/faba-icon-theme/blob/master/install-icon-theme.sh
[faba_mono_icon_theme]: https://github.com/moka-project/faba-mono-icons
