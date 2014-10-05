nmap <leader>c :w <bar> !dmd %<cr>
nmap <leader>r :w <bar> !rdmd %<cr>
nmap <leader>m :w <bar> !make<cr>
nmap <leader>t :w <bar> !rdmd -main -unittest -debug -g %<cr>
map <leader>ac :Tabularize /\/\/<cr>
map <leader>aC :Tabularize /\/\/\/<cr>

map <f3> :wa<cr>:!clear<cr>:Dispatch dub test<cr>
map <f4> :wa<cr>:!clear<cr>:Dispatch dub build<cr>
map <f5> :wa<cr>:!clear<cr>:Dispatch dub run<cr>

"map <f3> :wa<cr>:!clear<cr>:Dispatch make test<cr>
"map <f4> :wa<cr>:!clear<cr>:Dispatch make<cr>
"map <f5> :wa<cr>:!clear<cr>:Dispatch make run<cr>

set foldmethod=syntax
set foldnestmax=2
set tw=100
set colorcolumn=101

" allow jumping to unittest assert failures from quickfix
set errorformat^=%m@%f(%l):\ unittest\ failure
