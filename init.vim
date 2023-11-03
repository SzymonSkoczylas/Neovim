:set number
:set relativenumber
:set mouse=a
:set tabstop=4
:set autoindent
:set shiftwidth=4
:set smarttab
:set softtabstop=4

"Pamietaj o zainstalowaniu:
"exuberant-ctags
"python3.6 i python3-pip
"pip3 install pynvim
call plug#begin()

Plug 'xiyaowong/transparent.nvim' " Transparent
Plug 'https://github.com/github/copilot.vim' " Github Copilot
Plug 'https://github.com/EdenEast/nightfox.nvim' " Nightfox Theme
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

call plug#end()

:colorscheme carbonfox

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <S-t> :tabnext<CR>
nmap <F2> :TerminalTab bash<CR>
nmap <F3> :TerminalSplit bash<CR>
nmap <F8> :TagbarToggle<CR>


"air-line
let g:airline_powerline_fonts = 2

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
