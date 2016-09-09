" Plugins {{{

call plug#begin('~/.config/nvim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch'
Plug 'Matt-Stevens/vim-systemd-syntax'
Plug 'SirVer/ultisnips'
Plug 'majutsushi/tagbar'
Plug 'elzr/vim-json'
Plug 'rcorre/d.vim'
Plug 'idanarye/vim-dutyl'

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

" deoplete sources
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-clang'
Plug 'SevereOverfl0w/deoplete-github'
Plug 'landaire/deoplete-d'
Plug 'SirVer/ultisnips'
Plug 'Shougo/neco-vim'

call plug#end()

" }}}

" General Settings {{{

" appearance and information
colorscheme solarized
set bg=dark
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
set tw=79           " wrap text at 79 chars
set cc=+1           " show a column at 80 chars
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
set foldnestmax=4
set foldlevelstart=99

" other behavior
set splitbelow      " open splits (including preview) in lower portion of window
set noerrorbells    " no annoying noise on error
set nostartofline   " keep cursor in same column for long range moves

" don't redraw when executing things like macros
set lazyredraw

" load project-local vimrc if it exists (after ftplugin)
au FileType * if filereadable(".vim.local") | so .vim.local | endif
au BufRead,BufNewFile .vim.local set filetype=vim

" GUI Options
" a: visual mode sets clipboard selection (* register)
" e: show tab pages
" i: use a vim icon
set guioptions=aei
" }}}

" General Keymaps {{{

" set mapleader here so it applies to all future keymaps
let mapleader = "," " use , as leader character

" tap jk to exit intert mode (should be uncommon in normal typing)
inoremap jk <esc>

" Y yanks to end of line instead of whole line -- more like D and C
nnoremap Y y$

" format entire file
nnoremap <leader>= mzgg=G`z<cr>

" jump to previous tab
let g:lasttab = 1
nmap gl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" clipboard paste
noremap <leader>v :read !xclip -out -sel clip<cr>

" error jumping (first, next, previous)
nnoremap ge :cf<cr>
nnoremap gn :cn<cr>
nnoremap gp :cp<cr>
nnoremap gc :cclose<cr>

" command to save and exit while creating a session file
command! Bye :mksession! | :wqall

" substitution (line, global, confirm)
noremap sl :s/\<<c-r><c-w>\>//g<left><left>
noremap sg :%s/\<<c-r><c-w>\>//g<left><left>
noremap sc :%s/\<<c-r><c-w>\>//gc<left><left><left>

" find symbol in current directory
map <leader>f :vimgrep  ./**<left><left><left><left><left>
map <leader>F :vimgrep <c-r><c-w> src/**<cr>

" delete trailing whitespace
nmap <leader>dt :%s/\s\+$//g<cr>

" quickly open a tab to edit important files
command! EditFtp exe "tabnew" resolve("$HOME/.config/nvim/ftplugin/" . &ft . ".vim")
command! EditVimrc exe "tabnew" resolve("$HOME/.config/nvim/init.vim")
command! EditVimLocal exe "tabnew" resolve(".vim.local")
nmap <leader>ev :EditVimrc<CR>
nmap <leader>el :EditVimLocal<CR>
nmap <leader>ef :EditFtp<CR>
" }}}

" airline {{{

" always show last status
set laststatus=2

" response to various events
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_iminsert=0

" theming
let g:airline_theme='solarized'
let g:airline_powerline_fonts=1
set guifont="Inconsolata for Powerline"

let g:airline#extensions#branch#enabled = 0

" }}}

" ctrlp {{{

" ignore certain files I don't want to open in vim
let g:ctrlp_custom_ignore = { 'file': '\v\.(wav|png|ogg|o|a)$' }

" }}}

" deoplete {{{
"call deoplete#enable()

"inoremap <expr><tab> pumvisible() ? "\<c-n>" : deoplete#manual_complete()

" clang {{{

let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header='/usr/lib/clang/3.8.0/include'

" }}}

" }}}

" dutyl {{{

" Dutyl
" tell dutyl where to look for std imports
let g:dutyl_stdImportPaths=['/usr/include/dlang/dmd', '/usr/include/dlang/dmd/core']

"let g:dcd_path=resolve(expand("~/.vim/bundle/DCD"))

" }}}

" fugitive {{{

noremap <leader>gs :Gstatus<cr>
noremap <leader>gd :Gdiff<cr>
noremap <leader>gp :Gpush<cr>

" }}}

" latex {{{

set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:LatexBox_Folding=1

" }}}

" solarized {{{

" enable 256 colors
set t_Co=16
set t_AB=[48;5;%dm
set t_AF=[38;5;%dm

" set colorscheme, dark bg
set bg=dark
colorscheme solarized

" }}}

" tabular {{{

" Tabularize shortcut

" shortcut to enter tabularize command and wait for pattern
map <leader>a :Tabularize /

" }}}

" ultisnips {{{

" snippets lookup
let g:UltiSnipsSnippetsDir         = "~/dotfiles/vim/CustomSnips"
let g:UltiSnipsSnippetDirectories  = ["CustomSnips", "UltiSnips"]

" split horizontally to edit snippets file
let g:UltiSnipsEditSplit           = "horizontal"

" keymaps
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsListSnippets        = "<c-i>"

" }}}

" vim:foldmethod=marker:foldlevel=0
