system_arch=$(uname -m)
if [ "$system_arch" = "arm64" ]; then
  # eval Brew shellenv on Apple M1
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ "$system_arch" = "x86_64" ]; then
  # eval Brew shellenv on Apple Intel
  eval "$(/usr/local/bin/brew shellenv)"
fi

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
