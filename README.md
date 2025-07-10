# dotfiles

[yadm][yadm] managed dotfiles.

## Goals

1. Minimal dependency footprint ([yadm][yadm] uses `git` and `bash`)
2. **No** git submodules

## Installation

### Prerequisites: Linux

```sh
sudo apt install yadm
```

### Prerequisites: macOS

```sh
# Install Homebrew + yadm
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install yadm

# Update bash
brew install bash
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
chsh -s /usr/local/bin/bash
```

### Clone repository

```sh
cd $HOME
yadm clone git@github.com:dreadwarrior/dotfiles
```

### macOS only: initialize fzf

```sh
$(brew --prefix)/opt/fzf/install
```

### Optional step: configure YADM on a business machine

```sh
yadm config local.class work
yadm alt
```

Now restart your terminal session.

## Development

### Requirements

- Pandoc, e.g. via Homebrew `brew install pandoc`
- ShellCheck, e.g. via Homebrew `brew install shellcheck`
- JBang, e.g. via [SDKMAN!](https://sdkman.io/install)
- [go-task](https://taskfile.dev/)

### Update `.local/bin`-commands

- use Posix shell style whenever possible
- consider using [Argbash](https://argbash.io/) if argument and option handling is needed (non-Posix style only :/)
- use `shellcheck` for linting
- don't forget `chmod u+x`
- add [Pandoc compatible](https://pandoc.org/) man page markdown source in `/man` subdirectory
- optional:
  - adjust `dotfiles_commands.7.md` with link to new man page
  - adjust `index.md` with link to new man page

#### Build man pages

```sh
cd .local/bin/man
task clean all
```

#### Upgrade gh-pages branch

```sh
task gh-pages
```

## TODOs

  1. Test if these files are really needed and check security concerns:

     - .local/share/gtg/{gtg_tasks,projects,tags}.xml
     - .local/share/gnome-shell/extensions

## Links / Notes

  - [Upgrade to bash 4 in Mac OS X](http://clubmate.fi/upgrade-to-bash-4-in-mac-os-x/)
  - `⌘ CMD`+`⇧ SHIFT`+`.` Reveals hidden files in Open/Save dialogs on Mac OS
  - [Spring-Cleaning Homebrew Dependencies](http://patricklenz.co/blog/2012/5/21/spring-cleaning-homebrew-dependencies)
  - [Standard Exit Status Codes in Linux](https://www.baeldung.com/linux/status-codes)


[yadm]: https://github.com/TheLocehiliosan/yadm
