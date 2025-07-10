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
    ~$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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

## Development

### Requirements

- Pandoc, e.g. via Homebrew `brew install pandoc`
- ShellCheck, e.g. via Homebrew `brew install shellcheck`
- JBang, e.g. via [SDKMAN!](https://sdkman.io/install)

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
make clean all
```

#### Add new man page sections

1. Add new variables with appropriate values (use existing ones as examples):

       BUILD_DIR_MAN_SECTIONnnn
       BUILD_DIR_HTM_SECTIONnnn
       SRCS_SECTIONnnn
       OBJS_MAN_SECTIONnnn
       OBJS_HTM_SECTIONnnn

   Where _nnn_ reflects the new [section](https://en.wikipedia.org/wiki/Man_page#Manual_sections) (e.g. "2").

2. Add new `OBJS_` variables to `all`-target:
3. Add new rules for `BUILD_DIR_MAN_` and `BUILD_DIR__HTM_` targets
4. Adjust `clean target` for cleaning up new build dirs

#### Upgrade gh-pages branch

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
  - [Standard Exit Status Codes in Linux](https://www.baeldung.com/linux/status-codes)


[yadm]: https://github.com/TheLocehiliosan/yadm
