nmap <leader>t :TagbarToggle<cr>
nmap <leader>m :w<cr>:!colormake<cr>
nmap <leader>x :w<cr>:!doxygen<cr>
nmap gd :YcmCompleter GoToDefinitionElseDeclaration<cr>
" Align comments
map <leader>ac :Tabularize /\/\/<cr>
map <leader>aC :Tabularize /\/\/\/<<cr>
set foldmethod=syntax
set foldnestmax=1
set foldlevel=1
let c_no_comment_fold=1

" make
map <f1> :wa<cr>:!clear<cr>:Make run<cr>
map <f2> :wa<cr>:!clear<cr>:Make<cr>
