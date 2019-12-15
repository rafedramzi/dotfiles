#set -e # DEBUGGING PURPOSE ONLY

function run_antibody {
  ANTIBODY_HOME="$(antibody home)"
  export ZSH="$ANTIBODY_HOME/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
  #export ZSH_THEME="starship"
  export DISABLE_AUTO_UPDATE="true"
  FILE_PLUGIN_LAUNCH="$HOME/.zsh_plugins.sh"
  
  plugins=()
  #plugins+=(zsh-autosuggestions zsh-syntax-highlighting)

  if [[ ! -f "$FILE_PLUGIN_LAUNCH" ]]; then
    echo "$FILE_PLUGIN_LAUNCH doesn't exist"
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
}

function load_envs {
  source $HOME/.dotfiles/envs/terminaltc
  source $HOME/.dotfiles/envs/developmentrc
}

run_antibody
run_starship
load_aliases
load_envs

#set +e # DEBUGGING PURPOSE ONLY
eval  "$(starship init zsh)"
