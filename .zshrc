alias nv='nvim'
alias clr='clear'
alias bstart='browser-sync start --s --f --w "*/**"'

# this is for the bare repo
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 

# Prompt
# PROMPT=" %F{15}%f %F{8}[%f%F{243}%~%f%F{8}]%f %F{8}➜%f "

# functions
source $ZDOTDIR/zsh-functions

# other files
source $ZDOTDIR/zsh-aliases

# Plugins

zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"

# Git Branch

# Find and set branch name var if in git repository.
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else # this is the git branch part
    echo ' %F{141}%f %F{8}[%f%F{243}'$branch'%F{8}]%f'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
prompt=' %F{12}%f %F{7}%~%f$(git_branch_name) %F{8}➜%f '
