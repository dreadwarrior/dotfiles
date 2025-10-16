% 7ze(1) dreadwarrior | dotfiles
%
% October 2025

# NAME

**7ze** - Create a password-protected, strongly encrypted 7-zip archive.

# SYNOPSIS

**`7ze`** _archive file name_ _file(s)_

# DESCRIPTION

Create a password-protected, strongly encrypted 7-zip archive.

# OPTIONS

_archive file name_

:   Name of the archive, without file extension.

_file(s)_

:   Path to files to be added to the archive, space separated.

# EXAMPLES

Create a 7z archive named `foo.7z` with the files `a.txt` and `b.jpeg` from the
current directory:

    $ 7ze foo a.txt b.jpeg

# SEE ALSO

7z(1), 7zz(1)
