set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
"Plugin 'itchyny/lightline.vim'
Plugin 'ervandew/supertab'
call vundle#end()
filetype plugin indent on

" customization
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
colorscheme gruvbox
set background=dark
set colorcolumn=80
set laststatus=2
syntax on
set number
set autoread
set encoding=utf-8
set fileencoding=utf-8
set backspace=indent,eol,start
set fileformat=unix
set fileformats=unix
set shiftwidth=2
set softtabstop=2
set noexpandtab
set autoindent
set incsearch
set hlsearch
set cindent
set foldmethod=indent
set showtabline=2

let mapleader = ","
let maplocalleader = "\\"
iabbrev email vincycelebrity@gmail.com
noremap <esc> :noh<esc><cr>
noremap <esc><esc> :noh<cr><esc>
noremap <S-Enter> O<esc><cr>
noremap <CR> o<esc><cr>
noremap <leader>dn dd<cr>
noremap <leader>qn :q!<cr>
noremap <leader>zn :wq<cr>
noremap <leader>sn :w<cr>
noremap <leader>ev :vsplit $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>
noremap <leader>rv :vertical resize 80<cr>
noremap <leader>' viw<esc>a'<esc>bi'<esc>lel<cr>
noremap <leader>'' viw<esc>a"<esc>bi"<esc>lel<cr>
"noremap <leader>h <C-W>H<cr>
"noremap <leader>l <C-W>L<cr>
"noremap <leader>j <C-W>J<cr>
"noremap <leader>k <C-W>K<cr>
nmap <leader>t :enew<cr>
nmap <leader>l :bnext<cr>
nmap <leader>h :bprevious<cr>
nmap <leader>c :bd<cr>
nmap <leader>s :w<cr>
nmap <leader>q :q<cr>
nmap <leader>m :echo "t = new buffer, l = next buffer, h = previous buffer, c = close buffer, s = save buffer, q = quite vim"<cr>
