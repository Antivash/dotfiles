# ~/dotfiles/HOMELY.py
from homely.files import mkdir, symlink
# Create directories if they don't already exist
mkdir('~/.config')
mkdir('~/.config/nvim')
mkdir('~/.config/nvim/configs')
mkdir('~/.config/zsh')
mkdir('~/.config/kitty')
mkdir('~/.config/lf')

# Symlink the dots 
symlink('aliases.zshrc', '~/.config/zsh')
symlink('bro', '~/.bro')
symlink('fix-colors.zshrc', '~/.config/zsh')
symlink('folding.vim', '~/.config/nvim/configs')
symlink('foldtext.vim', '~/.config/nvim/configs')
symlink('functions.vim', '~/.config/nvim/configs')
symlink('homely.py', '~/.config/')
symlink('init.vim', '~/.config/nvim')
symlink('jpg-to-png.zshrc', '~/.config/zsh')
symlink('keybinds.zshrc', '~/.config/zsh')
symlink('kitty.conf', '~/.config/')
symlink('lfrc', '~/.config/lf')
symlink('main.vim', '~/.config/nvim/configs')
symlink('mappings.vim', '~/.config/nvim/configs')
symlink('nvm.zshrc', '~/.config/zsh')
symlink('paths.zshrc', '~/.config/zsh')
symlink('plugin-settings.vim', '~/.config/nvim/configs')
symlink('plugins.vim', '~/.config/nvim/configs')
symlink('plugins.zshrc', '~/.config/zsh')
symlink('powerlevel10k.zshrc', '~/.config/zsh')
symlink('ruby.zshsrc', '~/.config/zsh')
symlink('themes.zshrc', '~/.config/zsh')
symlink('zshrc', '~/.zshrc')
symlink('gitconfig', '~/.gitconfig')
# Setting Kitty Terminal Color Scheme
symlink('kitty-themes/themes/Monokai_Soda.conf', '~/.config/kitty/theme.conf')

# Install Stuff
#from homely.install import installpkg
# Install Hub from brew 
#installpkg('hub', brew='hub')
