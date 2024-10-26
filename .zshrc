# this is for the bare repo
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 

# Sourcing files
source $ZDOTDIR/zsh-functions
source $ZDOTDIR/zsh-aliases
# source $ZDOTDIR/zsh-prompt

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"

# Git Branch display in prompt

# Find and set branch name var if in git repository.
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else # this is the git branch part
		echo ' %F{177} '$branch '%f'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Prompt parts
usr=" %F%f%k%K{230}%F{221}"
dir="%F{243}%2c%F{230}%f%k"
# btm="\n%{\e[1;32m%}\U2514%{\e[0m%} %{\e[1;32m%}"
btm="\n%{\e[1;32m%}%F{220}❯%f "
# Config for prompt. PS1 synonym.
prompt='$(print $dir)$(git_branch_name)$(print $btm)'

# Zoxide init
eval "$(zoxide init zsh)"


# '', -- e712
# '',  -- e70f
# '', -- e711

#  
#  
#  
# ❯
# ⟩
# %F{30}%n %F{126}@%f%F{30}%m
# ⟫
