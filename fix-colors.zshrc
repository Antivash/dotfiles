# Change LS colors
LS_COLORS="ow=01;36;40" && export LS_COLORS

# Make CD use the LS colors
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit
