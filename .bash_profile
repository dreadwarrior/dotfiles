if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ -e /home/tommy/.nix-profile/etc/profile.d/nix.sh ]; then . /home/tommy/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
