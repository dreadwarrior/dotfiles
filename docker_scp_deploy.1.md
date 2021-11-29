% docker_scp_deploy(1) dreadwarrior | dotfiles
%
% November 2021

# NAME

**docker_scp_deploy** - Deploy Docker images via scp.

# SYNOPSIS

**`docker_scp_deploy`** _save-path_ _image-name_ _ssh-user_ _ssh-host_ _remote-path_

# DESCRIPTION

Deploy a Docker image to a remote host via SCP without uploading to a registry.

# OPTIONS

_save-path_

:   Path to the file where the _image-name_ will be saved on the local host.

_image-name_

:   Name of the image which was built locally.

_ssh-user_

:   Username used for connecting to remote host.

_ssh-host_

:   Remote hostname.

_remote-path_

:   Path where the image should be saved.

# EXAMPLES

The locally built `my-app:latest` Docker image is saved in the file 
`my-app.tar.gz` in the current directory. It is uploaded as user `ci` to the
host `my-app.com` into the remote folder `builds/`:

    $ docker_scp_deploy my-app.tar.gz my-app:latest ci my-app.com builds/

# BUGS

The uploaded image is currently not removed. Please ensure you login regularly
and cleanup the target folder(s) manually.

# SEE ALSO

scp(1), ssh(1)
