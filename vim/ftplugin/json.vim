set foldmethod=syntax
set foldnestmax=6
let g:vim_json_syntax_conceal=0
nmap <leader>t :w <bar> !jsonlint %<cr>
