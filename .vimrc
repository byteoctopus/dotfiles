call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim' 
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'chriskempson/base16-vim'
Plug 'daviesjamie/vim-base16-lightline'
Plug 'tpope/vim-fugitive'
Plug 'edkolev/tmuxline.vim'

call plug#end()

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"



colorscheme palenight
set background=dark
set cursorline
set laststatus=2
set noshowmode
set mouse=a
set number
set clipboard=unnamedplus

set foldenable
set foldmethod=syntax

set tabstop=4
set softtabstop=4
set expandtab 
set nowrap
set ttymouse=xterm2

let g:palenight_terminal_italics=1

function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction

let g:lightline = {
      \ 'colorscheme': 'palenight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified', 'syntaxitem' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'syntaxitem': 'SyntaxItem'
      \ },
      \ }

"function! s:base16_customize() abort
"  call Base16hi("verilogStatement", g:base16_gui0E, "", g:base16_cterm0E, "", "", "") 
"  call Base16hi("verilogRepeat", g:base16_gui0E, "", g:base16_cterm0E, "", "", "")
"  call Base16hi("verilogOperator", g:base16_gui0D, "", g:base16_cterm0D, "", "", "")
"  call Base16hi("verilogConsant", g:base16_gui0C, "", g:base16_cterm0C, "", "", "")
"endfunction
"
"augroup on_change_colorschema
"  autocmd!
"  autocmd ColorScheme * call s:base16_customize()
"augroup END
"
"if filereadable(expand("~/.vimrc_background"))
"  let base16colorspace=256
"  source ~/.vimrc_background
"endif

"hi clear LineNr
"hi clear SignColumn


set t_Co=256
if ($TERM == "xterm-termite")
  set termguicolors
endif
"set termguicolors

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
