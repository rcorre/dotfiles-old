filetype off
" autoload plugins
execute pathogen#infect()       
call pathogen#helptags()       

filetype plugin indent on
syntax on

" supertab - tab initiates omnicompletion
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:rubycomplete_buffer_loading=1
let g:rubycomplete_classes_in_global=1

set rnu			        " Relative numbering

set smartindent

set wildmenu		    " Command line completion

set hlsearch		    " highlight search results
set incsearch		    " jump to result during search input

set showmatch		    " show matching brackets

set noerrorbells	    " no annoying noise on error

set expandtab		    " tabs = spaces
set smarttab
set tabstop=4		    " 4 spacce tabs
set shiftwidth=4
