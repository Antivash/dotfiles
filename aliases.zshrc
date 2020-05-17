#   ███████████  █████████  █████   █████                                
#  ░█░░░░░░███  ███░░░░░███░░███   ░░███                                 
#  ░     ███░  ░███    ░░░  ░███    ░███                                 
#       ███    ░░█████████  ░███████████                                 
#      ███      ░░░░░░░░███ ░███░░░░░███                                 
#    ████     █ ███    ░███ ░███    ░███                                 
#   ███████████░░█████████  █████   █████                                
#  ░░░░░░░░░░░  ░░░░░░░░░  ░░░░░   ░░░░░                                 
#              █████████   ████   ███                                    
#             ███░░░░░███ ░░███  ░░░                                     
#            ░███    ░███  ░███  ████   ██████    █████   ██████   █████ 
#            ░███████████  ░███ ░░███  ░░░░░███  ███░░   ███░░███ ███░░  
#            ░███░░░░░███  ░███  ░███   ███████ ░░█████ ░███████ ░░█████ 
#            ░███    ░███  ░███  ░███  ███░░███  ░░░░███░███░░░   ░░░░███
#            █████   █████ █████ █████░░████████ ██████ ░░██████  ██████ 
#           ░░░░░   ░░░░░ ░░░░░ ░░░░░  ░░░░░░░░ ░░░░░░   ░░░░░░  ░░░░░░  
#                                                                        
#                                                                        
#                                                                        

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#{ Replace dir with K because I will forget this plugin if I dont
alias dir="lsd -lAh --group-dirs first"

#{ Replace commands with other commands
alias vim="nvim"
alias python="python3"
alias pip="pip3"
alias calc="quich"
alias imgur='_imgur() {gallery-dl -d $PWD https://imgur.com/a/"$1" ;}; _imgur'
alias start-alacritty="nohup alacritty &"
alias start-kitty="nohup kitty &"
alias show_colors='_show_colors() {for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done }; _show_colors'

#{ Apt Package Manager Commands
alias aar="sudo apt autoremove"
alias check="sudo apt check"
alias clean="sudo apt autoclean"
alias deps="sudo apt build-dep"
alias dist="sudo apt dist-upgrade"
alias find="sudo apt search"
alias index="sudo apt update"
alias ai="sudo apt install"
alias aif="sudo apt -f install"
alias purge="sudo apt purge"
alias run="sudo auto-apt run"
alias arm="sudo apt remove"
alias upgrade="sudo apt upgrade"

#{ Shorten and Expand links
alias shorten="$ZSH/snippets/short -s"
alias unshorten="$ZSH/snippets/short -e"

#{ Git Commands
alias g='git'
alias gst='git status'
alias gc='git commit'
alias ga='git add'
alias gpl='git pull'
alias gpom='git pull origin master'
alias gpu='git push'
alias gd='git diff'
alias gch='git checkout'
alias gnb='git checkout -b'
alias gac='git add . && git commit'
alias grs='git restore --staged .'
alias gre='git restore'
alias gr='git remote'
alias gcl='git clone'
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gt='git ls-tree -r master --name-only'
alias grm='git remote'
alias gb='git branch'
alias gm='git merge'
alias gf='git fetch'

#{ Configuration Shortcuts
export ZSHCFG="/home/antivash/.oh-my-zsh/config"
export NVIMCFG="/home/antivash/.config/nvim/configs"
alias cfg-zsh='_cfg-zsh() {$EDITOR $ZSHCFG/"$1".zshrc ;}; _cfg-zsh'
alias cfg-zshrc="$EDITOR ~/.zshrc"
alias cfg-vim='_cfg-vim() {$EDITOR $NVIMCFG/"$1".vim ;}; _cfg-vim'

#{ Switch Stuff
export SWITCHDIR="/mnt/f/Switch"
export CHEATSDIR="/mnt/f/Switch/Cheats/contents"
alias ftp-switch="yafc ftp://antivash:1psdontst0P@192.168.0.36:5000"

#{ Windows Terminal Config Directory
export WTCFG="/mnt/c/Users/sterl/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState"

