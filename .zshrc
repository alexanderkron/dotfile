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
antigen theme https://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme powerline

# Tell antigen that you're done.
antigen apply

# Source host specific zshrc
if [ -f ~/.zshrc_override ]; then
    source ~/.zshrc_override
fi
