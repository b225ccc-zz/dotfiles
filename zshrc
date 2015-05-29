autoload -U compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt suse

## History
## nice link: http://www.lowlevelmanager.com/2012/04/zsh-history-extend-and-persist.html
HISTFILE=$HOME/.zhistory       # enable history saving on shell exit
HISTSIZE=1200                  # lines of history to maintain memory
SAVEHIST=1000                  # lines of history to maintain in history file.
setopt EXTENDED_HISTORY        # save timestamp and runtime information
setopt HIST_IGNORE_DUPS
setopt INC_APPEND_HISTORY          # append rather than overwrite history file.

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
#alias h='history'
alias repos='cd ~/Documents/repos'
alias f.='find .'

fpath=( ~/.zfunc "${fpath[@]}" )

autoload -Uz h

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

function powerline_precmd() {
  export PS1="$(~/.config/powerline-shell.py $? --shell zsh 2> /dev/null)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

install_powerline_precmd
