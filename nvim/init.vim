set nocompatible
    filetype plugin on
syntax on


call plug#begin(stdpath('data') . '/plugged')

Plug '~/workspace/dotfiles/nvim/plugins/vim-go/'
Plug '~/workspace/dotfiles/nvim/plugins/iceberg.vim'
Plug '~/workspace/dotfiles/nvim/plugins/vim-airline'
Plug '~/workspace/dotfiles/nvim/plugins/vim-airline-themes'
Plug '~/workspace/dotfiles/nvim/plugins/ctrlp.vim'

call plug#end()

"======================
" Plugin Settings
"======================

" -- vim-go
let g:go_version_warning = 0
let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_doc_popup_window = 1
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"

" -- ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'


set background=dark
colorscheme iceberg "https://github.com/cocopon/iceberg.vim

set clipboard=unnamedplus
set wildmenu                 " visual autocomplete for command menu
set showmatch                " highlight matching brace

set nonu
set incsearch       " search as characters are entered
set hlsearch        " highlight matche
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is lower case
                    " case-sensitive otherwise

" -- tmux
set t_Co=256
