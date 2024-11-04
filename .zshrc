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

# Zoxide Init
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
# ◉◎
