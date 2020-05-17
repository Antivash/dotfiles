# /home/git/dotfiles/install.sh
mkdir -p ~/.config
mkdir -p ~/.config/nvim
mkdir -p ~/.config/nvim/configs
mkdir -p ~/.config/zsh
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/kitty
mkdir -p ~/.config/gtk-3.0
mkdir -p ~/.config/termite
mkdir -p ~/.config/lf

# os.symlink the dots 
ln -s /home/git/dotfiles/aliases.zshrc ~/.config/zsh
ln -s /home/git/dotfiles/bro ~/.bro
ln -s /home/git/dotfiles/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -s /home/git/dotfiles/folding.vim ~/.config/nvim/configs
ln -s /home/git/dotfiles/functions.vim ~/.config/nvim/configs
ln -s /home/git/dotfiles/init.vim ~/.config/nvim
ln -s /home/git/dotfiles/jpg-to-png.zshrc ~/.config/zsh
ln -s /home/git/dotfiles/keybinds.zshrc ~/.config/zsh
ln -s /home/git/dotfiles/kitty.conf ~/.config/kitty
ln -s /home/git/dotfiles/lfrc ~/.config/lf
ln -s /home/git/dotfiles/main.vim ~/.config/nvim/configs
ln -s /home/git/dotfiles/mappings.vim ~/.config/nvim/configs
ln -s /home/git/dotfiles/nvm.zshrc ~/.config/zsh
ln -s /home/git/dotfiles/paths.zshrc ~/.config/zsh
ln -s /home/git/dotfiles/plugin-settings.vim ~/.config/nvim/configs
ln -s /home/git/dotfiles/plugins.vim ~/.config/nvim/configs
ln -s /home/git/dotfiles/powerlevel10k.zshrc ~/.config/zsh
ln -s /home/git/dotfiles/zshrc ~/.zshrc
ln -s /home/git/dotfiles/gitconfig ~/.gitconfig
ln -s /home/git/dotfiles/termite.config ~/.config/termite/config
ln -s /home/git/dotfiles/gtk.css ~/.config/gtk-3.0
# Setting Kitty Terminal Color Scheme
ln -s /home/git/dotfiles/themes/kitty/Monokai_Soda.conf ~/.config/kitty/theme.conf
# Change Powerlevel10k Theme
ln -s /home/git/dotfiles/themes/p10k/soda.zsh /home/antivash/.p10k.zsh
