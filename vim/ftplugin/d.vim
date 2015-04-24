" non-makefile build commands
nmap <leader>c :w <bar> !dmd %<cr>
nmap <leader>r :w <bar> !rdmd --compiler=dmd %<cr>
nmap <leader>m :w <bar> !make<cr>
nmap <leader>t :w <bar> !rdmd -Isrc --compiler=dmd -main -unittest -debug -g %<cr>

" comment line
nnoremap <leader>b o//**<esc>80a*/<esc>

" align comments and member assignments
map <leader>ac :Tabularize /\/\/<cr>
map <leader>aC :Tabularize /\/\/\/<cr>
map <leader>am :Tabularize /_.*/<cr>

" delete text leading up to a block as well as the block itself
nnoremap <leader>db dt{da{

" makefile build/test/run
map <f3> :wa<cr>:!clear<cr>:Dispatch dub test --quiet<cr>
map <f4> :wa<cr>:!clear<cr>:Dispatch dub build --quiet<cr>
map <f5> :wa<cr>:!clear<cr>:Dispatch dub run --quiet<cr>

" search source files
map <leader>f :vimgrep src/**<left><left><left><left><left><left><left>
map <leader>F :vimgrep <c-r><c-w> src/**<cr>

" folding
set foldmethod=syntax
set foldnestmax=2

" text width
set tw=100
set colorcolumn=101

" allow jumping to unittest assert failures from quickfix
set errorformat^=%m@%f(%l):\ unittest\ failure
set errorformat+=%-G%.%#
