# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# Powerlevel10k Configs. [Should stay close to the top of ~/.zshrc.]
source $HOME/.config/zsh/powerlevel10k.zshrc

# Paths
source $HOME/.config/zsh/paths.zshrc

# Fix ZLE
TRAPWINCH() {
  zle && { zle reset-prompt; zle -R }
}

# Fix LS/CD Colors
#source $HOME/.config/zsh/fix-colors.zshrc

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
source $HOME/.config/zsh/ruby.zshrc

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

# fzf: General-purpose interactive command-line fuzzy finder
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Install fzf
zinit ice from"gh-r" as"command"
zinit load junegunn/fzf-bin

# ZSH Options
setopt AUTO_CD            # Change to a directory just by typing its name
setopt AUTO_PUSHD         # Make cd push each old directory onto the stack
setopt CDABLE_VARS        # Like AUTO_CD, but for named directories
setopt PUSHD_IGNORE_DUPS  # Don't push duplicates onto the stack

# Function for batch moving and renaming of files
autoload -Uz zmv

# Load OMZ Git library
zinit snippet OMZ::lib/git.zsh

# Load Git plugin from OMZ
zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit cdclear -q # <- forget completions provided up to this moment

# Two regular plugins loaded without tracking.
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

# Plugin history-search-multi-word loaded with tracking.
zinit load zdharma/history-search-multi-word

# Some OH-MY-ZSH plugins
zinit snippet OMZ::plugins/command-not-found/command-not-found.plugin.zsh
zinit snippet OMZ::plugins/extract/extract.plugin.zsh
#zinit snippet OMZ::plugins/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh

# Make Dir and CD Into it
zinit light caarlos0/zsh-mkc

# FZF Tools
# Widgets
zinit light ytet5uy4/fzf-widgets
# Bookmarks
zinit light urbainvaes/fzf-marks

# EnhanCD
#zinit light b4b4r07/enhancd

# Tab completions
zinit ice wait lucid blockf atpull'zinit creinstall -q .'
zinit light zsh-users/zsh-completions

# Set Powerlevel10k Theme
setopt promptsubst
zinit light romkatv/powerlevel10k

# Custom Keybinds
source $HOME/.config/zsh/keybinds.zshrc
# Node Version Management
source $HOME/.config/zsh/nvm.zshrc
# Aliases: Shortcuts to various commands
source $HOME/.config/zsh/aliases.zshrc

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin
