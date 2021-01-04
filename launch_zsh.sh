#set -e # DEBUGGING PURPOSE ONLY

function run_antibody {
  ANTIBODY_HOME="$(antibody home)"
  export ZSH="$ANTIBODY_HOME/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
  #export ZSH_THEME="starship"
  export DISABLE_AUTO_UPDATE="true"
  FILE_PLUGIN_LAUNCH="$HOME/.zsh_plugins.sh"
  
  #plugins=()
  #plugins+=(zsh-autosuggestions zsh-syntax-highlighting)

  if [[ ! -f "$FILE_PLUGIN_LAUNCH" ]]; then
    echo "$FILE_PLUGIN_LAUNCH doesn't exist, creating one..."
    antibody bundle < ~/.dotfiles/antibody/bundles.txt >  $FILE_PLUGIN_LAUNCH
    chmod +x "$FILE_PLUGIN_LAUNCH"
  fi
  
  source $FILE_PLUGIN_LAUNCH
}

  
function run_starship {
  eval "$(starship init zsh)"
}

function load_aliases {
  source $HOME/.dotfiles/aliases/terminal
  source $HOME/.dotfiles/aliases/utils
  source $HOME/.dotfiles/aliases/kubectl_aliases
}

function load_envs {
  source $HOME/.dotfiles/envs/terminalrc
  source $HOME/.dotfiles/envs/terminalrc.zsh
  source $HOME/.dotfiles/envs/developmentrc
}

function load_pywal {
  # Import colorscheme from 'wal' asynchronously
  # &   # Run the process in the background.
  # ( ) # Hide shell job control messages.
  (cat ~/.cache/wal/sequences &)

  # To add support for TTYs this line can be optionally added.
  source ~/.cache/wal/colors-tty.sh
}

run_antibody
run_starship
load_aliases
load_envs
#load_pywal

#set +e # DEBUGGING PURPOSE ONLY
eval "$(direnv hook zsh)"
