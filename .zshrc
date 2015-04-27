source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle brew
antigen bundle git
antigen bundle python

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Use powerline
antigen theme nfarrar/oh-my-powerline oh-my-powerline

# Tell antigen that you're done.
antigen apply
