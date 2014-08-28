nmap <leader>c :w <bar> !dmd %<cr>
nmap <leader>r :w <bar> !rdmd %<cr>
nmap <leader>m :w <bar> !make<cr>
nmap <leader>t :w <bar> !rdmd -main -unittest -debug -g %<cr>
map <leader>ac :Tabularize /\/\/<cr>
map <leader>aC :Tabularize /\/\/\/<cr>

map <f4> :wa<cr>:!clear<cr>:Dispatch make<cr>
map <f5> :wa<cr>:!clear<cr>:Dispatch make run<cr>
map <f6> :wa<cr>:!clear<cr>:Dispatch make test<cr>

set foldmethod=syntax
set foldnestmax=2
set tw=120
set colorcolumn=121
