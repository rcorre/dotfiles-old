" general, non-filetype specific settings

" appearance and information
set rnu             " Relative numbering
set nu              " full line number on current line
set showmatch       " show matching brackets
set scrolloff=3     " number of screen lines to show around cursor
set colorcolumn=+1  " highlight the column after textwidth

" tab handling
set expandtab       " tabs = spaces
set smarttab
set smartindent
set tabstop=4       " 4 space tabs
set shiftwidth=4
set tw=80           " wrap text at 80 chars
set cino=(1s        " only indent one shiftwidth continuing an open paren

" wild menu
set wildmenu              " Command line completion
set wildmode=longest,list " Complete up to longest common string, then list
set wildignore+=*.swp,*.bak,*.pyc,Session.vim
set completeopt="menu"

" searching
set hlsearch        " highlight search results
set incsearch       " jump to result during search input
set ignorecase      " case insensitive searching
set smartcase       " unless a capital letter given in search term

" Folding
set foldnestmax=1
set foldlevelstart=99

" other behavior
set splitbelow      " open splits (including preview) in lower portion of window
set noerrorbells    " no annoying noise on error
set nostartofline   " keep cursor in same column for long range moves

" terminal speed up
set ttyfast
set lazyredraw

" load project-local vimrc if it exists (after ftplugin)
au FileType * if filereadable(".vim.local") | so .vim.local | endif
au BufRead,BufNewFile .vim.local set filetype=vim

" GUI Options
" a: visual mode sets clipboard selection (* register)
" e: show tab pages
" i: use a vim icon
set guioptions=aei
