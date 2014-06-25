nmap <leader>c :w <bar> !dmd %<cr>
nmap <leader>r :w <bar> !rdmd %<cr>
nmap <leader>t :w <bar> !rdmd -main -unittest -debug -g %<cr>
map <leader>ac :Tabularize /\/\/<cr>
map <leader>aC :Tabularize /\/\/\/<cr>

set foldmethod=syntax
set foldnestmax=2
set tw=120
set colorcolumn=121
