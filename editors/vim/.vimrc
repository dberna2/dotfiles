syntax enable 

set number
set numberwidth=1
set showcmd
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set backspace=indent,eol,start
set splitbelow

call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', { 'branch' : 'release' }
Plug 'vim-python/python-syntax'
Plug 'vim-scripts/indentpython.vim'

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1
let mapleader=","

nmap <LEADER>s <Plug>(easymotion-s2)
nmap <LEADER>nt :NERDTreeFind<CR>
nmap <LEADER>w :w<CR>
nmap <LEADER>q :q<CR>
nmap <LEADER>f :Files<CR>

:imap jj <Esc>

" Go to code definition
nmap <LEADER>gs :CocSearch
nmap <SILENT>gd <Plug>(coc-definition)


