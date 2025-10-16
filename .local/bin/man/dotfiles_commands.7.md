% dotfiles_commands(7) dreadwarrior | dotfiles
%
% September 2022

# NAME

**dotfiles commands**

# DESCRIPTION

List of commands shipped with this **dotfiles** instance.

`7ze`

:   Create a password-protected, strongly encrypted 7-zip archive.

`brew_fix_sslread`

:   Fixes "SSLRead() return error -9806" on macOS using brew.

`darwin_ramfs_mount`

:   Create and mount a RAM disk on macOS.

`drawin_ramfs_umount`

:   Unmount and detach a RAM disk on macOS.

`darwin_readlink`

:   `readlink -f` alternative on macOS hosts.

`docker_scp_deploy`

:   Deploy Docker images via scp.

`fif`

:   Search for file contents with `fzf` and ripgrep (`rg`).

`get_random_password`

:   Generate a random password using various shell commands and tools.

`git_bare_to_normal`

:   Converts a bare git repository into a working copy.

`ls_conf_diff`

:   Listing modified configuration files on Debian hosts.

`maven_verify_multi_module`

:   Run a lightweight verify goal on a (complex) Maven multi-module project.

`mj`

:   Jiggle the mouse.

`pdb_diff`

:   Export KeepassXC database to CSV and diff with `vimdiff`.

`show_routes`

:   Probes and uses different commands for routing table introspection.

`ssh_key_discovery`

:   Discovers and SSH host to prevent "Host key verification failed." errors
    during automatic SSH command executions without human interaction.

`ssl_inspect`

:   Outputs information about an (HTTP-)SSL certificate of a given hostname.

# SEE ALSO

darwin_ramfs_mount(1), darwin_ramfs_umount(1), docker_scp_deploy(1), fif(1),
maven_verify_multi_module(1), pdb_diff(1), ssh_key_discovery(1), 
dotfiles_aliases(7), dreadwarrior_dotfiles(7)
