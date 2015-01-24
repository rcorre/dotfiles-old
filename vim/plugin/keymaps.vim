" general-purpose custom key mappings and commands

let mapleader = "," " use , as leader character

" Y yanks to end of line instead of whole line -- more like D and C
nnoremap Y y$

" format entire file
nnoremap <leader>f mzgg=G`z<cr>

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

" substitution (line and global)
noremap <leader>s :s/<c-r><c-w>//g<left><left>
noremap <leader>S :%s/<c-r><c-w>//g<left><left>

" delete trailing whitespace
nmap <leader>dt :%s/\s\+$//g<cr>

" quickly open a tab to edit important files
command! EditFtp exe "tabnew" resolve("$HOME/.vim/ftplugin/" . &ft . ".vim")
command! EditVimrc exe "tabnew" resolve("$MYVIMRC")
command! EditVimrcLocal exe "tabnew" resolve(".vim.local")
nmap <leader>es :UltiSnipsEdit<CR>
nmap <leader>ev :EditVimrc<CR>
nmap <leader>el :EditVimrcLocal<CR>
nmap <leader>ef :EditFtp<CR>
