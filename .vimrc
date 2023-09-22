set t_Co=256
set nocompatible
set encoding=utf-8

set cursorline
set background=light
colorscheme PaperColor
highlight Normal ctermfg=black ctermbg=white

filetype on
filetype indent on
filetype plugin on   

set number
syntax on
set tabstop=2
set autoindent
set belloff=all


" Relative Number
set relativenumber

set foldmethod=syntax

" disable bold
set t_md=

" Leader Key
let mapleader = ","

command W :execute ':silent w !sudo tee % > /dev/null' | :edit!


" New line and exit insert mode
map o o<Esc>k
map O O<Esc>j

" Buffer previous / next
map <leader>bp :bprevious<CR>
map <leader>bn :bnext<CR>

" Buffer delete save / delete / save
"map <leader>bd :w :bd<CR>

" Reload .vimrc
map <leader>r :so %<CR>

" Redo
map U <C-r>
" unmap q
map q <nop>

map <c-j> <c-e>
map <c-k> <c-y>

" Plugins
call plug#begin()
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
" Plug 'NLKNguyen/papercolor-theme'
Plug 'easymotion/vim-easymotion'
" Plug 'nvim-orgmode/orgmode'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'vim-pandoc/vim-pandoc'
" Vim-Session
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
let g:session_autosave = 'no'
let g:session_autoload = 'yes'
call plug#end()
