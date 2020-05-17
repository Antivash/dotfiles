"                           ██████   █████                              ███                                                        
"                          ░░██████ ░░███                              ░░░                                                         
"                           ░███░███ ░███   ██████  ██████  █████ █████████ █████████████                                          
"                           ░███░░███░███  ███░░██████░░███░░███ ░░███░░███░░███░░███░░███                                         
"                           ░███ ░░██████ ░███████░███ ░███ ░███  ░███ ░███ ░███ ░███ ░███                                         
"                           ░███  ░░█████ ░███░░░ ░███ ░███ ░░███ ███  ░███ ░███ ░███ ░███                                         
"                           █████  ░░█████░░██████░░██████   ░░█████   ██████████░███ █████                                        
"                          ░░░░░    ░░░░░  ░░░░░░  ░░░░░░     ░░░░░   ░░░░░░░░░░ ░░░ ░░░░░                                         
"   ███████████  ████                      ███                █████████            █████   █████    ███                            
"  ░░███░░░░░███░░███                     ░░░                ███░░░░░███          ░░███   ░░███    ░░░                             
"   ░███    ░███ ░███ █████ ████  ███████ ████ ████████     ░███    ░░░   ██████  ███████ ███████  ████ ████████    ███████  █████ 
"   ░██████████  ░███░░███ ░███  ███░░███░░███░░███░░███    ░░█████████  ███░░███░░░███░ ░░░███░  ░░███░░███░░███  ███░░███ ███░░  
"   ░███░░░░░░   ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███     ░░░░░░░░███░███████   ░███    ░███    ░███ ░███ ░███ ░███ ░███░░█████ 
"   ░███         ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███     ███    ░███░███░░░    ░███ ███░███ ███░███ ░███ ░███ ░███ ░███ ░░░░███
"   █████        █████░░████████░░███████ █████████ █████   ░░█████████ ░░██████   ░░█████ ░░█████ █████████ █████░░███████ ██████ 
"  ░░░░░        ░░░░░  ░░░░░░░░  ░░░░░███░░░░░░░░░ ░░░░░     ░░░░░░░░░   ░░░░░░     ░░░░░   ░░░░░ ░░░░░░░░░ ░░░░░  ░░░░░███░░░░░░  
"                                ███ ░███                                                                          ███ ░███        
"                               ░░██████                                                                          ░░██████         
"                                ░░░░░░                                                                            ░░░░░░          

"{ Git Gutter:
let g:gitgutter_enabled = 1
let g:gitgutter_grep=''

"{ NerdTree:
" if nerdtree is only window, kill nerdtree so buffer can die
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | :bdelete | endif
map <F7> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 0
let NERDTreeShowHidden=1
let NERDChristmasTree=1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize = 25
let g:NERDTreeDirArrowExpandable = '▷'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeAutoCenter=1
let g:NERDTreeIndicatorMapCustom = {
        \ "modified"  : "✹",
        \ "staged"    : "✚",
        \ "untracked" : "✭",
        \ "renamed"   : "➜",
        \ "unmerged"  : "═",
        \ "deleted"   : "✖",
        \ "dirty"     : "✗",
        \ "clean"     : "✔︎",
        \ 'ignored'   : '☒',
        \ "unknown"   : "?"
        \ }

"{ Airline:
"zza{{ Main Settings:
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
let g:airline_symbols = {}
let g:airline_skip_empty_sections = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols_branch = ''
let g:airline_powerline_fonts = 1
let g:airline_symbols.crypt = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.modified = ' '
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
"{{ Extensions:
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#unicode#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#vista#enabled = 1
let g:airline#extensions#hunks#enabled = 1
"{{ Extension settings:
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
let airline#extensions#coc#warning_symbol = ':'
let airline#extensions#coc#error_symbol = ':'
let g:airline#extensions#hunks#hunk_symbols = [':', ':', ':']
let g:airline#extensions#branch#format = 2

"{ Devicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_denite = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_vimfiler = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_enable_airline_statusline = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsDefaultFolderOpenSymbol = ''

"{ Comfy-Scroll
let g:comfortable_motion_friction = 50.0
let g:comfortable_motion_air_drag = 1.0

"{ Emoji
set completefunc=emoji#complete

"{ Indent Guides

"let g:indentLine_char = '▏'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:indent_guides_auto_colors = 1
let g:indentLine_fileTypeExclude = [
      \'defx',
      \'markdown',
      \'denite',
      \'startify',
      \'tagbar',
      \'vista_kind',
      \'vista'
      \]

"{ Autopairs
let g:AutoPairsFlyMode = 0
let g:AutoPairsMultilineClose = 0

"{ Ultinsips
" These were interfering with coc.nvims completion keybinds
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsListSnippets="<c-tab>"

"{ Startify
"{{ Center Function
function! s:center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction
"{{ Header
let s:header= [
\"            _                                                                                 ",
\"           / )                                                                                ", 
\"        ,-(,' ,---.                                                                           ",
\"       (,-.\,' `  _)-._                                                                       ",
\"          ,' `(_)_)  ,-`--.                                                                   ",
\"         /          (      )                                                                  ",
\"        /            `-.,-'|   Listen, kid, love is the only chance for happiness             ",
\"       /                |  /     you'll ever get in this life, and if you're                  ",
\"       |               ,^ /    going to let a little thing like rejection stand in your way,  ",
\"      /                   |      baby, you might as well stay right there on the ground,      ",
\"      |                   /     because people are going to be walking over you               ",
\"     /                   /       for the rest of your life.                                   ",
\"     |                   |                                                                    ",
\"     |                   |                                                                    ",
\"    /                    \                                                                    ",
\"  ,.|                    |                                                                    ",
\"(`\ |                    |                                                                    ",
\"(\  |   --.      /  \_   |                                                                    ",
\" (__(   ___)-.   | '' )  /)                                                                   ",
\"     `---...\\\--(__))/-'-'                                                                   ",
\]
"{{ Other Settings"
let g:startify_change_to_dir = 1
let g:startify_custom_header = s:center(s:header)
" Optionally create and use footer
"let s:header= []
"let g:startify_custom_footer = s:center(s:footer)

"{ CoC.nvim
"{{ Node Directory
let g:coc_node_path = '/usr/bin/node'

"{{ Define Error Symbols and colors
let g:coc_status_warning_sign = ''
let g:coc_status_error_sign = ''
hi CocWarningSign ctermfg=blue 
hi CocErrorSign ctermfg=red
hi CocInfoSign ctermfg=yellow
hi CocHintSign ctermfg=green

"{{ Transparent popup window
hi! Pmenu ctermbg=black
hi! PmenuSel ctermfg=2
hi! PmenuSel ctermbg=0

"{{ Brighter line numbers
hi! LineNr ctermfg=NONE guibg=NONE

"{{ KEY REMAPS
set updatetime=300
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

"{{ Extensions. Some need configuration. 
" coc-java needs a valid JVM filepath defined in coc-settings
" coc-ccls needs ccls (available on aur)
" coc-eslint needs eslint npm package installed globally
let g:coc_global_extensions = [
      \'coc-html', 
      \'coc-xml', 
      \'coc-java', 
      \'coc-powershell', 
      \'coc-r-lsp', 
      \'coc-vimlsp', 
      \'coc-lua', 
      \'coc-sql', 
      \'coc-go', 
      \'coc-css', 
      \'coc-sh', 
      \'coc-snippets',
      \'coc-prettier',
      \'coc-eslint',
      \'coc-emmet',
      \'coc-tsserver',
      \'coc-translator',
      \'coc-fish',
      \'coc-docker',
      \'coc-pairs',
      \'coc-json',
      \'coc-python',
      \'coc-imselect',
      \'coc-highlight',
      \'coc-git',
      \'coc-github',
      \'coc-gitignore',
      \'coc-emoji',
      \'coc-lists',
      \'coc-post',
      \'coc-stylelint',
      \'coc-yaml',
      \'coc-template',
      \'coc-tabnine',
      \'coc-utils'
      \]

augroup MyAutoCmd
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

"{{ Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

"{ Nerd Commenter 

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

"{ Fuzzy Finding 

" Use colors with FZF
let g:fzf_colors =
\ { 'fg':      ['bg', 'Normal'],
\ 'bg':      ['bg', 'Normal'],
\ 'hl':      ['fg', 'Comment'],
\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
\ 'bg+':     ['fg', 'CursorLine', 'CursorColumn'],
\ 'hl+':     ['fg', 'Statement'],
\ 'info':    ['fg', 'PreProc'],
\ 'border':  ['fg', 'Ignore'],
\ 'prompt':  ['fg', 'Conditional'],
\ 'pointer': ['fg', 'Exception'],
\ 'marker':  ['fg', 'Keyword'],
\ 'spinner': ['fg', 'Label'],
\ 'header':  ['fg', 'Comment'] }

" Hide status bar while using fzf commands                                                                          
if has('nvim') || has('gui_running')                                                                                
  autocmd! FileType fzf                                                                                             
  autocmd  FileType fzf set laststatus=0 | autocmd WinLeave <buffer> set laststatus=2                               
endif    

" Centered floating window for fzf
let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }

"{ Autosaving    

let g:auto_save        = 0
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "FocusLost"]

"{ Markdown Preview 

" Contains CSS for markdown + page + higlight
let g:mkdp_markdown_css = '/home/gideon/.config/nvim/static/markdown-preview/customStyle.css' 
" Trick plugin into hosting colors.css so we get nice themes
let g:mkdp_highlight_css = '/home/gideon/.cache/wal/colors.css'
let g:mkdp_port = '3456'

"{ Colorizer

" Automatic loading
"let g:colorizer_auto_color = 1

" Skip coloring comments
"let g:colorizer_skip_comments = 1

" Enable/Disable highlighting color names
"let g:colorizer_colornames = 0

" Use X11 colornames
"let g:colorizer_x11_names = 1

" Use syntax highlighting
"let g:colorizer_syntax = 1

"Disable BufLeave autocommand
"let g:colorizer_disable_bufleave = 1

"Rendering colors as virtual text
" let g:colorizer_use_virtual_text = 1

"Allow Colorize to map keys automatically
"let g:colorizer_auto_map = 1


"{{ Auto-Map Key List
" Keys            Name                Function
" ----            ----                --------
" <Leader>cC      <Plug>Colorizer     Toggle highlighting of Colors. In visual
"                                     mode it only highlights the colors in the
"                                     selected region (normal and visual mode).
" <Leader>cT      <Plug>ColorContrast Cycle through contrast setting
"                                     |:ColorContrast| (normal and visual mode)
" <Leader>cF      <Plug>ColorFgBg     Toggle foreground and background color
"                                     |:ColorSwapFgBg|

"{{  Enable/Disable Autocommands
" --------------------------------------
" By default, the auto commands can be cause a performance penalty and make Vim
" appear unresponsive. To disable certain autocommands, you can set the
" variable:

"    let g:colorizer_<autocomand> = 0

"{{ Use custom colornames                    *Colorizer-custom-colornames*
" --------------------------

" You can add separate colornames to be colored. For this to work, set the
" variable g:colorizer_custom_colors to your liking, e.g. like this: >
"
"    let g:colorizer_custom_colors = { 'blue': '0'}

" Guess what, this will color the word blue in red.

"{ Hexokinase
" Neovim default
let g:Hexokinase_highlighters = [ 'virtual'  ]
"
" " Vim default
" let g:Hexokinase_highlighters = [ 'sign_column'  ]
"
"" All possible highlighters
" let g:Hexokinase_highlighters = [
"       \   'virtual',
"       \   'sign_column',
"       \   'background',
"       \   'backgroundfull',
"       \   'foreground',
"       \   'foregroundfull'
"       \ ]

" Patterns to match for all filetypes
" " Can be a comma separated string or a list of strings
" " Default value:
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'
"
" " All possible values
" let g:Hexokinase_optInPatterns = [
" \     'full_hex',
" \     'triple_hex',
" \     'rgb',
" \     'rgba',
" \     'hsl',
" \     'hsla',
" \     'colour_names'
" \ ]
"
" " Filetype specific patterns to match
" " entry value must be comma seperated list
" let g:Hexokinase_ftOptInPatterns = {
" \     'css': 'full_hex,rgb,rgba,hsl,hsla,colour_names',
" \     'html': 'full_hex,rgb,rgba,hsl,hsla,colour_names'
" \ }
" }

" Sample value, to keep default behaviour don't define this variable
" let g:Hexokinase_ftEnabled = ['css', 'html', 'javascript']

"{ CSApprox
    if (&term == 'xterm' || &term =~? '^screen') && hostname() == 'my-machine'
        " On my machine, I use an old Konsole with 256 color support
        set t_Co=256
        let g:CSApprox_konsole = 1
    endif
