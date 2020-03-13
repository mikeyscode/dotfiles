set nocompatible
    filetype plugin on
syntax on

call plug#begin('~/.vim/plugged')

Plug '~/workspace/dotfiles/nvim/plugins/vim-go/'
Plug '~/workspace/dotfiles/nvim/plugins/godoctor.vim/'
Plug '~/workspace/dotfiles/nvim/plugins/ctrlp.vim/'
Plug '~/workspace/dotfiles/nvim/plugins/vim-tmux-navigator/'
Plug '~/workspace/dotfiles/nvim/plugins/vimwiki/'
Plug '~/workspace/dotfiles/nvim/plugins/vim-one/'
Plug '~/workspace/dotfiles/nvim/plugins/vim-delve-master'
"Plug 'vimwiki/vimwiki'

"if !has('nvim')
" Plug 'maralla/completor.vim' " or whichever you use
"endif
"if has('nvim')
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-go', {'build': {'unix': 'make'}}
" Plug 'jodosha/vim-godebug' " Debugger integration via delve
"endif

" All of your Plugs must be added before the following line
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""
" After Any Change you need to call
" :PlugInstall
" :GoInstallBinaries
"""""""""""""""""""""""""""""""""""""""""""

let g:go_version_warning = 0

let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_doc_popup_window = 1

let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"

augroup auto_go
	autocmd!
	autocmd BufWritePost *.go :GoBuild
	autocmd BufWritePost *_test.go :GoTest
augroup end


"set t_Co=256
"if (has("termguicolors"))
" set termguicolors
"endif

"colorscheme default2

set background=dark
"colorscheme ir_black
colorscheme iceberg

""set nu

set clipboard=unnamedplus
set wildmenu                 " visual autocomplete for command menu
set showmatch                " highlight matching brace

set incsearch       " search as characters are entered
set hlsearch        " highlight matche
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is lower case
                    " case-sensitive otherwise
