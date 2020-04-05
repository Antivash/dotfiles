# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle brew
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle extract
antigen bundle fzf
antigen bundle git
#antigen bundle tmux
antigen bundle zsh-interactive-cd
antigen bundle zsh_reload

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme romkatv/powerlevel10k

# k is the new l, yo
antigen bundle supercrabtree/k

# FZF stuff
# -- ZLE Widgets
antigen bundle ytet5uy4/fzf-widgets
# -- Bookmarks
antigen bundle urbainvaes/fzf-marks

# Make a dir and cd into it with mkc
antigen bundle caarlos0/zsh-mkc

# Tell Antigen that you're done.
antigen apply
