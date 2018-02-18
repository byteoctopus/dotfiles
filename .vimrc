call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim' 
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vhda/verilog_systemverilog.vim'
call plug#end()

set background=dark
colorscheme palenight
set laststatus=2
set noshowmode
set mouse=a
set number
set clipboard=unnamedplus

set cursorline
set foldenable
set foldmethod=syntax

set tabstop=4
set softtabstop=4
set expandtab 
set nowrap

let g:palenight_terminal_italics=1

let g:lightline = {
      \ 'colorscheme': 'palenight',
      \ }

set termguicolors

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
