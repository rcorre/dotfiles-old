setlocal foldmethod=indent
nnoremap <leader>r :!python %<cr>
nnoremap <leader>p :vs <bar> term python<cr>
set omnifunc=pythoncomplete#Complete
nnoremap <c-p> :FZF -q !__pycache__ <cr><space>
