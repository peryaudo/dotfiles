set nocompatible

" Encode Recognition
" (From https://sites.google.com/site/fudist/Home/vim-nihongo-ban/vim-utf8#encode.vim)
set encoding=utf-8
source ~/.vim/encode.vim

" Set Ambiguous Characters Double Width
if exists('&ambiwidth')
	set ambiwidth=double
endif

" Set gvim options
set transparency=10
set guifont=Osaka-Mono:h16
set guioptions-=e
set guioptions-=T

" Set width and height of vim
set lines=40
set columns=120

filetype off
if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
	call neobundle#rc(expand('~/.vim/bundle/'))
endif

" NeoBundle Plugins
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'tpope/vim-rails'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'jdonaldson/vaxe'
NeoBundle 'kana/vim-filetype-haskell'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Blackrush/vim-gocode'

filetype plugin on
filetype indent on

" File Specific Indentations
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType coffee setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType eruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType lisp setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType cpp setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

set number
set hlsearch
set showcmd
set showtabline=2

set formatoptions=q
set linebreak

set directory^=$HOME/.vim_swap//

syntax enable

" Plugin Configurations

" Molokai
colorscheme molokai

" QuickRun
" let g:quickrun_config = {}
" let g:quickrun_config.cpp = {'command' : 'clang++'}
" let g:quickrun_config._ = {'runmode' : 'simple'}
" augroup peryaudo
"	autocmd!
"	autocmd BufWinEnter,BufNewFile ~/Dropbox/TopCoder/*.cpp
"		\ let b:quickrun_config = {'exec': '%c %s', 'command': 'tcjudge'}
" augroup END
