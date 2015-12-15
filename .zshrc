source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle brew
antigen bundle colored-man
antigen bundle colorize
antigen bundle git
antigen bundle npm
antigen bundle python
antigen bundle sudo
antigen bundle vagrant
antigen bundle web-search

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
alias glog='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias ls='ls -1'
alias prettypath='echo $PATH | tr \: \\n'


# Use Vim
export EDITOR=vim
