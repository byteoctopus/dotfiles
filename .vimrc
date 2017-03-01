execute pathogen#infect()
syntax on
filetype plugin indent on
set noshowmode
set laststatus=2
set background=dark
colorscheme hybrid
set t_Co=256
set t_ut=
set mouse=a
map <C-n> :NERDTreeTabsToggle<CR>
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="hybridline"
hi Normal             ctermbg=NONE
hi Statement          ctermbg=NONE
hi Title              ctermbg=NONE
hi Todo               ctermbg=NONE
hi Underlined         ctermbg=NONE
hi ErrorMsg           ctermbg=NONE
hi LineNr             ctermbg=NONE
