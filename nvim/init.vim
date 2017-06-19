" Plugins {{{
"

set rtp+=/usr/share/myrddin/vim
set rtp+=/usr/share/vim/vimfiles

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-speeddating'
Plug 'elzr/vim-json'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'alfredodeza/pytest.vim'
Plug 'fatih/vim-go'
Plug 'mileszs/ack.vim'
Plug 'neomake/neomake'
Plug 'junegunn/fzf.vim'

call plug#end()

" }}}

" General Settings {{{

filetype plugin indent on

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
set tabstop=4       " 4 space tabs
set shiftwidth=4
set tw=79           " wrap text at 79 chars
set cc=+1           " show a column at 80 chars
set cino=(1s        " only indent one shiftwidth continuing an open paren

" wild menu
set wildmenu              " Command line completion
set wildmode=longest,list " Complete up to longest common string, then list
set wildignore+=*.swp,*.bak,*.pyc,Session.vim
set wildignorecase
set completeopt="menu"

" searching
set ignorecase
set smartcase

" Folding
set foldmethod=indent
set foldnestmax=4
set foldlevelstart=99

" Completion
set completeopt=menu

" other behavior
set splitbelow
set nostartofline
set autoread

" don't redraw when executing things like macros
set lazyredraw

" set mapleader here so it applies to all future keymaps
let mapleader = "," " use , as leader character

" load project-local vimrc if it exists (after ftplugin)
if filereadable(".vim.local") | so .vim.local | endif
au BufRead,BufNewFile .vim.local set filetype=vim

" }}}

" General Keymaps {{{

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

nnoremap <c-p> :FZF<cr>
" }}}

" fugitive {{{

noremap <leader>gs :Gstatus<cr>
noremap <leader>gd :Gdiff<cr>
noremap <leader>gD :Gdiff HEAD~<cr>
noremap <leader>gp :Gpush<cr>

set diffopt="filler,vertical"

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

" airline {{{

let g:airline_theme='solarized'
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1

" Disable missing characters
let g:airline_symbols = {'maxlinenr': '', 'whitespace': ''}

" }}}

" fzf {{{

let g:fzf_action = {
    \ 'ctrl-s': 'split',
    \ 'ctrl-v': 'vsplit',
    \ 'ctrl-t': 'tab-split' }

let g:fzf_history_dir='~/.local/share/fzf-history'

" }}}

" neomake {{{

let g:neomake_logfile='/tmp/neomake.log'

" }}}

" vim:foldmethod=marker:foldlevel=0
