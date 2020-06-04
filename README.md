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

On MacOS hosts, the `dotfiles_install` will also performs some adjustments for the Finder
and installs [brew][brew] packages.

### Other scripts

  * **docker_stop_rm**

    *Stops and removes a docker container by its id.*

  * **fixbom**

    *Removes and re-applies UTF-8 Byte Order Mark to a set of files.*

  * **ls_conf_diff**

    *Lists configuration files which differs from the package versions.*

  * **mp4_to_mp3**

    *Extracts the audio track of a MP4 video (MP3, 192kbps)*

  * **show_routes**

    *Probes and uses different commands for routing table introspection*

  * **ssl_inspect**

    *Outputs information about an (HTTP-)SSL certificate of a given hostname.*

  * **status**

    *Work-in-progress script for printing out hardware information (battery, cpu, ...)*

  * **stream**

    *Simple wrapper around `mplayer -playlist` for listening to shoutcast streams.*

  * **tabs_to_spaces**

    *Converts tab indentation in files to spaces.*

  * **unixtime**

    *Prints the current unix timestamp*

  * **vagrant_vm_portmap**

    *Gives information about current port mappings of a vagrant powered virtual machine*

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

## TODOs

  1. Test if these files are really needed and check security concerns:

     - .local/share/gtg/{gtg_tasks,projects,tags}.xml
     - .local/share/gnome-shell/extensions

  2. Integrate global system name probing (`uname -s`), individual usage by `dotfiles-install/*` scripts

## Links / Notes

  - [Upgrade to bash 4 in Mac OS X](http://clubmate.fi/upgrade-to-bash-4-in-mac-os-x/)
  - `⌘ CMD`+`⇧ SHIFT`+`.` Reveals hidden files in Open/Save dialogs on Mac OS
  - [Spring-Cleaning Homebrew Dependencies](http://patricklenz.co/blog/2012/5/21/spring-cleaning-homebrew-dependencies)

### Useful Darwin applications

  - [Fugu - a free sFTP, SCP and SSH frontend][fugu]

[yadm]: https://github.com/TheLocehiliosan/yadm
[bash_git_prompt]: https://github.com/magicmonty/bash-git-prompt
[moka_icon_theme]: https://github.com/moka-project/moka-icon-theme
[faba_icon_theme]: https://github.com/moka-project/faba-icon-theme
[faba_icon_theme_install]: https://github.com/moka-project/faba-icon-theme/blob/master/install-icon-theme.sh
[faba_mono_icon_theme]: https://github.com/moka-project/faba-mono-icons
[brew]: http://brew.sh/
[fugu]: http://rsug.itd.umich.edu/software/fugu/

