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


if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme one
set background=dark 
let g:one_allow_italics = 1 " I love italic for comments

