setlocal foldmethod=indent
nnoremap <leader>r :!python %<cr>
nnoremap <leader>p :vs <bar> term python<cr>
setlocal omnifunc=pythoncomplete#Complete
nnoremap <c-p> :FZF -q !__pycache__ <cr><space>
au! BufWritePost * Neomake
nnoremap <leader>sp :FZF -q py$ /usr/lib/<cr><space>
nnoremap <leader>up :FZF -q py$ ~/.local/lib<cr><space>
