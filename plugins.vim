"   ██████   █████                              ███                                     
"  ░░██████ ░░███                              ░░░                                      
"   ░███░███ ░███   ██████  ██████  █████ █████████ █████████████                       
"   ░███░░███░███  ███░░██████░░███░░███ ░░███░░███░░███░░███░░███                      
"   ░███ ░░██████ ░███████░███ ░███ ░███  ░███ ░███ ░███ ░███ ░███                      
"   ░███  ░░█████ ░███░░░ ░███ ░███ ░░███ ███  ░███ ░███ ░███ ░███                      
"   █████  ░░█████░░██████░░██████   ░░█████   ██████████░███ █████                     
"  ░░░░░    ░░░░░  ░░░░░░  ░░░░░░     ░░░░░   ░░░░░░░░░░ ░░░ ░░░░░                      
"                           ███████████  ████                      ███                  
"                          ░░███░░░░░███░░███                     ░░░                   
"                           ░███    ░███ ░███ █████ ████  ███████ ████ ████████   █████ 
"                           ░██████████  ░███░░███ ░███  ███░░███░░███░░███░░███ ███░░  
"                           ░███░░░░░░   ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███░░█████ 
"                           ░███         ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░░░░███
"                           █████        █████░░████████░░███████ █████████ ███████████ 
"                          ░░░░░        ░░░░░  ░░░░░░░░  ░░░░░███░░░░░░░░░ ░░░░░░░░░░░  
"                                                        ███ ░███                       
"                                                       ░░██████                        
"                                                        ░░░░░░                         

"{ Vim-Plug Core Settings:
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

let g:vim_bootstrap_langs = ""
let g:vim_bootstrap_editor = "nvim"				" nvim or vim

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

"{{ (Required) Where to keep plugins:
call plug#begin(expand('~/.config/nvim/plugged'))

"{ Plugins

"{{ Git wrapper:
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"{{ Nerd Commenter:
Plug 'scrooloose/nerdcommenter'

"{{ Code Snippets Engine
" Plug 'SirVer/ultisnips'

"{{ Snippets for ultisnips
Plug 'honza/vim-snippets'

"{{ Vim Surround
Plug 'tpope/vim-surround'

"{{ Auto pairs
Plug 'jiangmiao/auto-pairs'

"{{ Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

"{{ Indent guides
Plug 'Yggdroot/indentLine'

"{{ COC
 Plug 'neoclide/coc.nvim', {'branch': 'release'}

"{{ Smart completion (to work with CoC)
"Plug 'zxqfl/tabnine-vim'

"{{ Custom start page
Plug 'mhinz/vim-startify'

"{{ Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"{{ Tabular auto-align
Plug 'godlygeek/tabular'

"{{ Comfy scroll
Plug 'yuttie/comfortable-motion.vim'

"{{ Add DevIcons
Plug 'ryanoasis/vim-devicons'

"{{ NERDTree
Plug 'scrooloose/nerdtree', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind' ] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"{{ Emoji support
Plug 'junegunn/vim-emoji'

"{{ FZF Fuzzy Finder
if isdirectory('/home/linuxbrew/.linuxbrew/opt/fzf')
  Plug '/home/linuxbrew/.linuxbrew/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '/home/linuxbrew/.linuxbrew/opt/fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif
let g:make = 'gmake'
if exists('make')
        let g:make = 'make'
endif

"{{ Setcolors Script
" Set colorscheme with script. 
" F8: Next Theme
" Shift-F8: Previous Theme
Plug 'felixhummel/setcolors.vim'

"{{ Markdown Preview:
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

"{{ Colorizer:
Plug 'chrisbra/Colorizer'

"{{ Hexokinase
Plug 'RRethy/vim-hexokinase'

"{{ vim-bufferline
Plug 'bling/vim-bufferline'

"{{ Vim Which Key
Plug 'liuchengxu/vim-which-key'


"{ Themes

"{{ CSApprox
" Make gvim-only colorschemes work transparently in terminal vim
Plug 'vim-scripts/CSApprox'

"{{ Wal Theme:
Plug 'dylanaraps/wal.vim'
Plug 'deviantfero/wpgtk.vim'

"{{ Identify Theme:
Plug 'junk-e/identity.vim'

"{{ Novum Theme:
Plug 'dylnmc/novum.vim'

"{{ Dracula Theme:
Plug 'dracula/vim'

"{{ Gruvbox Theme:
Plug 'morhetz/gruvbox'

"{{ Mizux Themes Collection:
" Includes: Blade Runner, Mouse, Mouse V2, and Silent Hill
Plug 'Mizux/vim-colorschemes'

"{{ Sonokai Theme:
Plug 'sainnhe/sonokai'

"{{ Nightfly Theme":
Plug 'bluz71/vim-nightfly-guicolors'

"{{ Nebula Theme:
Plug 'stillwwater/vim-nebula'

"{{ Sitruuna Theme:
Plug 'eemed/sitruuna.vim'

"{{ Monokai Soda Theme
Plug 'RobertYan/monokai-soda'

"{{ Warlock Theme
Plug 'hardselius/warlock'

"{{ Vim-Awesome (Collection of themes)
Plug 'rafi/awesome-vim-colorschemes'

"{{ Badwolf
Plug 'sjl/badwolf'

"{{ Space-vim-dark
Plug 'liuchengxu/space-vim-dark'

"{{ Apprentice
Plug 'romainl/Apprentice'

"{{ Pencil
Plug 'reedes/vim-colors-pencil'

"{{ Srcery
Plug 'srcery-colors/srcery-vim'

"{ End of Plugins File
call plug#end()
