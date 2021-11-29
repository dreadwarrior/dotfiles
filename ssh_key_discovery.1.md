% ssh_key_discovery(1) dreadwarrior | dotfiles
%
% November 2021

# NAME

**ssh_key_discovery** - Discover SSH keys of given hosts.

# SYNOPSIS

**`ssh_key_discovery`** _hostname-or-ip_ [_hostname-or-ip_, ...]

# DESCRIPTION

Discovers and SSH host to prevent "Host key verification failed." errors during
automatic SSH command executions without human interaction.

It removes and (re-)adds the discovered hosts to the ~/.ssh/known_hosts file
of the executing user.

# OPTIONS

_hostname-or-ip_, ...

:   One or more hostnames or IPs to discover SSH keys for.

# ENVIRONMENT VARIABLES

`MODE=(hostname|ip)`

: Resolves the IP if set to **hostname** or the hostname if set to **ip**.
  Defaults to ("hostname").

# EXAMPLES

Discover SSH-Keys for a list of IP addresses:

    $ MODE=ip ssh_key_discovery 1.1.1.1 2.2.2.2

# SEE ALSO

dig(1), host(1), ssh-keygen(1), ssh-keyscan(1)
