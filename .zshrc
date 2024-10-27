# this is for the bare repo
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 
setopt prompt_subst

# Sourcing files
source $ZDOTDIR/zsh-functions
source $ZDOTDIR/zsh-aliases
source $ZDOTDIR/zsh-prompt

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"

# old --TODO delete when done Git Branch display in prompt

# # Find and set branch name var if in git repository.
# function git_branch_name()
# {
#   branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
#   if [[ $branch == "" ]];
#   then
#     :
#   else # this is the git branch part
# 		echo ' %F{177} '$branch '%f'
#   fi
# }



# right prompt
#rprompt=' I want how long the command took to execute here or maybe a timestamp'
#
eval "$(zoxide init zsh)"

# '', -- e712
# '',  -- e70f
# '', -- e711
#  
#  
#  
# ❯
# ⟩
# ⟫
