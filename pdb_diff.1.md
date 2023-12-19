% pdb_diff(1) dreadwarrior | dotfiles
%
% September 2022

# NAME

**pdb_diff** - Export KeepassXC database to CSV and diff with `vimdiff`.

# SYNOPSIS

**`pdb_diff`** \[`-h`] _filea_ _fileb_

# DESCRIPTION

Manually syncing KeePassXC files between two devices is more secure than using a
cloud storage for keeping it in sync automatically.

The packaged `keepassxc-cli` binary of the KeePassXC application on macOS 
supports exporting a KeePassXC database to a CSV file.

By using a diff tool, one can manually sync the database and then re-import on
the second device.

The command creates two temporary files in the working directory of its 
execution. After exiting the diff tool, you'll have to hit any key in order to
proceed with cleaning them up.

# OPTIONS

`-h`, `--help`

:   Prints help

_filea_

:   File A (left) which is exported and feeded to the diff tool.

_fileb_

:   File B (right) which is exported and feeded to the diff tool.

# EXIT STATUS

0

:   successful execution

1

:   error while parsing command line arguments

126

:  The command is currently available on macOS platforms only.

    *Note*: Pull requests are welcome to make this more platform agnostic.

127

:   no valid keepassxc-cli executable found

    This may happen, if the application is not installed within `/Applications`.

    Please check, if it is installed within `~/Applications/` and adjust the
    path in the  `pdb_diff` command accordingly.

    *Note*: Pull requests are welcome to make this more agnostic towards 
    installation locations.
    

# EXAMPLES

    $ pdb_diff passwords-desktop.kdbx passwords-mobile.kdbx

# SEE ALSO

vimdiff(1)

