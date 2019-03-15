set nocompatible
    filetype plugin on
syntax on

call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go' 
Plug 'godoctor/godoctor.vim' 
Plug 'ctrlpvim/ctrlp.vim' 
Plug 'christoomey/vim-tmux-navigator'
Plug '~/workspace/dotfiles/nvim/plugins/vimwiki/'
Plug '~/workspace/dotfiles/nvim/plugins/vim-one/'
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

let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"

augroup auto_go
	autocmd!
	autocmd BufWritePost *.go :GoBuild
	autocmd BufWritePost *_test.go :GoTest
augroup end


if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme one-dark
set background=dark 
let g:one_allow_italics = 1 " I love italic for comments

set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum

