if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/tommy/.sdkman"
[[ -s "/Users/tommy/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/tommy/.sdkman/bin/sdkman-init.sh"
