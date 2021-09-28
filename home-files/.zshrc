##!/bin/zsh
# To profile
#zmodload zsh/zprof
source ~/.dotfiles/launch_zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export GPG_TTY=$(tty)
if [ -e /home/pwyll/.nix-profile/etc/profile.d/nix.sh ]; then . /home/pwyll/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH
source $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh
export PATH="$GOPATH/bin:$PATH"

