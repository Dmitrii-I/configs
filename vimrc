" 'set' is for setting options. You can view options with 'set option_name?'
" 'let' is for setting variables, i.e. 'let a=555'. View with 'echo a' or 'let a'


" Install pathogen.vim plugin manager like so:
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
execute pathogen#infect()
" Now any plugins you wish to install can be extracted to a subdirectory under ~/.vim/bundle, and they will be added to the 'runtimepath'
	


set backspace=2 " make backspace work 

" different indentation per file type
filetype plugin on
filetype indent on

" Enable syntax highlighting
syntax enable
syntax on

" solarized color scheme
set background=dark
colorscheme solarized


" enable vim-airline status line pluging
set laststatus=2

" Transparrent background
hi Normal          ctermfg=252 ctermbg=none

" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch 

" By pressing F6, execute current line in terminal/bash
nmap <F6> :.w !bash

" Sets how many lines of history VIM has to remember
set history=10000

" Set to auto read when a file is changed from the outside
set autoread

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Pressing =j in normal mode reformats the JSON file
nmap =j :%!python3 -m json.tool<CR>

" avoid messed up indentation when pasting
set paste

" tabs are 2 spaces for yaml files:
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 expandtab

set tabstop=4
set shiftwidth=4
set expandtab
