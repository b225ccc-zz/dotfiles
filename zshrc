autoload -U compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt suse

## History
## nice link: http://www.lowlevelmanager.com/2012/04/zsh-history-extend-and-persist.html
HISTFILE=$HOME/.zhistory       # enable history saving on shell exit
HISTSIZE=100000                  # lines of history to maintain memory
SAVEHIST=100000                 # lines of history to maintain in history file.
setopt EXTENDED_HISTORY        # save timestamp and runtime information
setopt HIST_IGNORE_DUPS
#setopt INC_APPEND_HISTORY          # append rather than overwrite history file.
setopt SHARE_HISTORY          # append rather than overwrite history file.

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
#alias h='history'
alias repos='cd ~/Documents/repos'
alias f.='find .'

alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gc='git commit'
alias gca='git commit --all'
alias gcm='git commit -m'
alias gaa='git add -A'
alias gpull='git pull'
alias gpush='git push'
alias glog='git log --oneline'

alias sp='echo -e "\n\n\n\n\n\n\n\n\n\n\n\n"'

fpath=( ~/.zfunc "${fpath[@]}" )
fpath=(/usr/local/share/zsh-completions $fpath)

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

#install_powerline_precmd
#
#PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}%#"

# very simple prompt
#PROMPT="%~ > "

source ~/Documents/repos/zsh-git-prompt/zshrc.sh
function prompt_char {
  if [ $UID -eq 0 ]; then echo "#"; else echo '>'; fi
}
#PROMPT='%~$(git_super_status) $(prompt_char) '
PROMPT='%{$fg[green]%}%~%{$reset_color%}$(git_super_status) %{$fg[green]%}$(prompt_char)%{$reset_color%} '
