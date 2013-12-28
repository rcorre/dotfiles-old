set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()
" let vundle managle vundle - required!
Bundle 'gmarik/vundle'

" Bundles
" Run :BundleInstall after adding
" Run :BundleUpdate to update
" Run :BundleClean after removing
Bundle 'flazz/vim-colorschemes'
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'bling/vim-airline'
Bundle 'godlygeek/tabular'

" End of Bundles
" YCM
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1

filetype plugin indent on
syntax on

set rnu	        " Relative numbering
set smartindent
set wildmenu    " Command line completion

set hlsearch    " highlight search results
set incsearch 	" jump to result during search input
set ignorecase  " case insensitive searching

set showmatch	" show matching brackets

set noerrorbells  " no annoying noise on error

set expandtab	  " tabs = spaces
set smarttab
set tabstop=4	  " 4 space tabs
set shiftwidth=4
set tw=80 	  " wrap text at 80 chars

set t_Co=256    "enable 256 colors
set t_AB=[48;5;%dm
set t_AF=[38;5;%dm
colorscheme wombat256
set bg=dark

" vim-airline config
set laststatus=2    "always show
"let g:airline_left_sep='>'
"let g:airline_right_sep='<'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_iminsert=0
let g:airline_theme='powerlineish'
set guifont="Inconsolata for Powerline"
