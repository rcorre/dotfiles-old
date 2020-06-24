set expandtab
nnoremap <leader>r :!sh %<cr>
set tw=0

" Ignore warning about expanding args inside trap
let g:neomake_shellcheck_args=["-e", "2064"]
