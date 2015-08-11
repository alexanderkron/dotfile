source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle brew
antigen bundle colored-man
antigen bundle colorize
antigen bundle git
antigen bundle python
antigen bundle vagrant

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme it up
antigen theme philips

# Tell antigen that you're done.
antigen apply

# Source host specific zshrc
if [ -f ~/.zshrc_override ]; then
    source ~/.zshrc_override
fi

# Make 'ls' pretty
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Global Aliases
alias ls='ls -1'

# Use Vim
export EDITOR=vim
