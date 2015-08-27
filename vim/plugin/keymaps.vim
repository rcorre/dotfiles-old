" general-purpose custom key mappings and commands

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
command! EditFtp exe "tabnew" resolve("$HOME/.vim/ftplugin/" . &ft . ".vim")
command! EditVimFolder exe "tabnew" resolve("$HOME/.vim")
command! EditVimLocal exe "tabnew" resolve(".vim.local")
nmap <leader>es :UltiSnipsEdit<CR>
nmap <leader>ev :EditVimFolder<CR>
nmap <leader>el :EditVimLocal<CR>
nmap <leader>ef :EditFtp<CR>
