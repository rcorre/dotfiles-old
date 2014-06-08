nmap <leader>c :w <bar> !dmd %<cr>
nmap <leader>r :w <bar> !rdmd %<cr>
nmap <leader>t :w <bar> !rdmd -main -unittest -debug -g %<cr>
nmap <leader>ac :Tabularize /\/\/<cr>
nmap <leader>ad :Tabularize /\/\/\/<cr>

set foldmethod=syntax
set foldnestmax=2
set foldlevel=2
