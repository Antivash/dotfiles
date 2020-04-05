# ~/dotfiles/install.sh
mkdir -p ~/.config
mkdir -p ~/.config/nvim
mkdir -p ~/.config/nvim/configs
mkdir -p ~/.config/zsh
mkdir -p ~/.config/kitty
mkdir -p ~/.config/lf

# os.symlink the dots 
ln -s ~/dotfiles/aliases.zshrc ~/.config/zsh
ln -s ~/dotfiles/bro ~/.bro
ln -s ~/dotfiles/fix-colors.zshrc ~/.config/zsh
ln -s ~/dotfiles/folding.vim ~/.config/nvim/configs
ln -s ~/dotfiles/foldtext.vim ~/.config/nvim/configs
ln -s ~/dotfiles/functions.vim ~/.config/nvim/configs
ln -s ~/dotfiles/init.vim ~/.config/nvim
ln -s ~/dotfiles/jpg-to-png.zshrc ~/.config/zsh
ln -s ~/dotfiles/keybinds.zshrc ~/.config/zsh
ln -s ~/dotfiles/kitty.conf ~/.config/kitty
ln -s ~/dotfiles/lfrc ~/.config/lf
ln -s ~/dotfiles/main.vim ~/.config/nvim/configs
ln -s ~/dotfiles/mappings.vim ~/.config/nvim/configs
ln -s ~/dotfiles/nvm.zshrc ~/.config/zsh
ln -s ~/dotfiles/paths.zshrc ~/.config/zsh
ln -s ~/dotfiles/plugin-settings.vim ~/.config/nvim/configs
ln -s ~/dotfiles/plugins.vim ~/.config/nvim/configs
ln -s ~/dotfiles/plugins.zshrc ~/.config/zsh
ln -s ~/dotfiles/powerlevel10k.zshrc ~/.config/zsh
ln -s ~/dotfiles/ruby.zshsrc ~/.config/zsh
ln -s ~/dotfiles/themes.zshrc ~/.config/zsh
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/gitconfig ~/.gitconfig
# Setting Kitty Terminal Color Scheme
ln -s ~/dotfiles/kitty-themes/themes/Monokai_Soda.conf ~/.config/kitty/theme.conf