set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
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
"set foldmethod=indent
set showtabline=2

let mapleader = ","
let maplocalleader = "\\"
noremap <esc> :noh<esc><cr>
noremap <esc><esc> :noh<cr><esc>
noremap <S-Enter> O<esc><cr>
noremap <CR> o<esc><cr>
noremap <leader>ev :vsplit $MYVIMRC<cr>
nmap <leader>v :source $MYVIMRC<cr>
nmap <leader>r :vertical resize 80<cr>
nmap <leader>' viw<esc>a'<esc>bi'<esc>lel<cr>
nmap <leader>'' viw<esc>a"<esc>bi"<esc>lel<cr>
nmap <leader>< viw<esc>a<<esc>bi><esc>lel<cr>
nmap <leader>t :enew<cr>:edit
nmap <leader>l :bnext<cr>
nmap <leader>h :bprevious<cr>
nmap <leader>c :bd<cr>
nmap <leader>s :w<cr>
nmap <leader>q :q<cr>
nmap <leader>m :echo "t = new buffer, l = next buffer, h = previous buffer, c = close buffer, s = save buffer, q = quite vim"<cr>
